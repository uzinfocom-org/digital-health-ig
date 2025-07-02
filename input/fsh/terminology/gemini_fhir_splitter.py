import os
import re
import argparse
from pathlib import Path
from collections import defaultdict

def process_fsh_file(file_path, output_dir):
    """
    Parses a FHIR Shorthand ValueSet file and splits it into a CodeSystem
    and a revised ValueSet file. Handles two common syntax variations.

    Args:
        file_path (Path): The path to the input .fsh file.
        output_dir (Path): The directory where the output files will be saved.
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except IOError as e:
        print(f"Error reading file {file_path}: {e}")
        return

    # --- 1. Extract Metadata from the original ValueSet ---
    vs_name_match = re.search(r"ValueSet:\s*(\S+)", content)
    vs_id_match = re.search(r"Id:\s*(\S+)", content)
    vs_title_match = re.search(r"Title:\s*\"(.*?)\"", content, re.DOTALL)
    vs_description_match = re.search(r"Description:\s*\"(.*?)\"", content, re.DOTALL)
    vs_url_match = re.search(r"\*\s*\^url\s*=\s*\"(.*?)\"", content)

    if not all([vs_name_match, vs_id_match, vs_title_match, vs_description_match, vs_url_match]):
        print(f"Skipping {file_path.name}: Could not parse essential ValueSet metadata.")
        return

    vs_name = vs_name_match.group(1)
    vs_id = vs_id_match.group(1)
    vs_title = vs_title_match.group(1)
    vs_description = vs_description_match.group(1)
    vs_url = vs_url_match.group(1)

    # --- 2. Extract Code System and Designations (handles two syntaxes) ---
    base_system = None
    cs_designations_list = []
    all_unique_codes = [] # <<< CHANGE: List to store codes for extensional ValueSet

    # Method 1: Check for "include" syntax
    include_blocks_raw = re.findall(r"\*\s*include\s*\$(.*?)\#(\S+)\n((?:[\t ]*\*\s*\^designation.*?\n)*)", content)

    if include_blocks_raw:
        print(f"Info: Found 'include' syntax in {file_path.name}.")
        base_system = include_blocks_raw[0][0]
        for _, code, designation_block in include_blocks_raw:
            # <<< CHANGE: Populate the list of unique codes
            if code not in all_unique_codes:
                all_unique_codes.append(code)
            cs_designations_list.append(f"* #{code}\n{designation_block.strip()}")
    else:
        # Method 2: Check for line-by-line designation syntax
        print(f"Info: 'include' syntax not found. Checking for line-by-line syntax in {file_path.name}.")
        # This regex is more specific to correctly capture the optional designation part.
        line_by_line_matches = re.findall(r"^\*\s*\$([^#\s]+)#(\S+)(?:\s+(\^.*))?", content, re.MULTILINE)

        if not line_by_line_matches:
            print(f"Skipping {file_path.name}: No 'include' or line-by-line designations found.")
            return

        base_system = line_by_line_matches[0][0]
        grouped_designations = defaultdict(list)

        for system, code, designation_part in line_by_line_matches:
            # <<< CHANGE: Populate the list of unique codes
            if code not in all_unique_codes:
                all_unique_codes.append(code)
            
            if designation_part and designation_part.strip():
                # Reformat the designation part to be a standalone line for the CS
                # e.g., from "^designation[=].value = ..." to "  * ^designation[=].value = ..."
                reformatted_line = f"  * {designation_part.strip()}"
                grouped_designations[code].append(reformatted_line)
        
        # The script previously built a unique_codes_in_order list here.
        # We now use the `all_unique_codes` list created above for the same purpose.
        for code in all_unique_codes:
            if code in grouped_designations:
                designation_block = "\n".join(grouped_designations[code])
                cs_designations_list.append(f"* #{code}\n{designation_block}")

    if not base_system:
         print(f"Skipping {file_path.name}: Could not determine a base system.")
         return

    # --- 3. Generate the new CodeSystem (CS) file ---
    cs_name = vs_name.replace("VS", "CS")
    cs_id = vs_id.replace("-vs", "-cs")
    cs_url = vs_url.replace("/ValueSet/", "/CodeSystem/")
    cs_designations_content = "\n".join(cs_designations_list)

    cs_content = f"""CodeSystem: {cs_name}
Id: {cs_id}
Title: "{vs_title.replace("Types of", "").strip()} translations"
Description: "{vs_title.replace("Defines the types of", "").strip()} supplement with translations"
* ^url = "{cs_url}"
* ^experimental = true
* ^content = #supplement
* ^supplements = ${base_system}
* ^version = "5.0.0"
* ^language = #en
{cs_designations_content}
"""

    # --- 4. Generate the new ValueSet (VS) file ---
    new_vs_name = vs_name
    other_metadata = re.findall(r"(\*\s*\^experimental.*)", content)
    
    # <<< CHANGE: Build the extensional include lines
    vs_include_lines = "\n".join([f"* include ${base_system}#{code}" for code in all_unique_codes])
    
    vs_content = f"""ValueSet: {new_vs_name}
Id: {vs_id}
Title: "{vs_title}"
Description: "{vs_description}"
* ^url = "{vs_url}"
{''.join(other_metadata)}
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical({cs_name})
* ^version = "5.0.0"

{vs_include_lines}
"""

    # --- 5. Write the new files ---
    cs_filename = output_dir / f"{cs_name}.fsh"
    vs_filename = output_dir / f"{new_vs_name}.fsh"

    try:
        with open(cs_filename, 'w', encoding='utf-8') as f:
            f.write(cs_content)
        print(f"Successfully created {cs_filename.name}")

        with open(vs_filename, 'w', encoding='utf-8') as f:
            f.write(vs_content)
        print(f"Successfully created {vs_filename.name}")
    except IOError as e:
        print(f"Error writing file: {e}")


def main():
    """Main function to handle command-line arguments and process a single file."""
    parser = argparse.ArgumentParser(
        description="Split a FHIR Shorthand ValueSet file into a CodeSystem supplement and an updated ValueSet."
    )
    parser.add_argument(
        "input_file",
        type=str,
        help="The path to the single .fsh ValueSet file to process."
    )
    parser.add_argument(
        "output_dir",
        type=str,
        help="The directory where the new .fsh files will be saved."
    )
    args = parser.parse_args()

    input_file_path = Path(args.input_file)
    output_path = Path(args.output_dir)

    if not input_file_path.is_file():
        print(f"Error: Input file '{input_file_path}' not found or is not a regular file.")
        return

    output_path.mkdir(parents=True, exist_ok=True)

    print(f"\nProcessing {input_file_path.name}...")
    process_fsh_file(input_file_path, output_path)
    print("Processing complete.")


if __name__ == "__main__":
    main()
