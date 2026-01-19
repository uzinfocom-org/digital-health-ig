# SNOMED Code Validation Results

## Summary

- **Total codes validated:** 45
- **Correct codes:** 36
- **Issues found:** 9

## Critical Issues (Must Fix)

### 1. WRONG CODE - European house dust mite (Line 37-39)
- **Current:** `256260009` with display "European house dust mite"
- **Actual SNOMED display:** "Tree and shrub pollen" - COMPLETELY WRONG!
- **Correct code:** `264401009` (Dermatophagoides pteronyssinus)
- **Fix:** Change code from `256260009` to `264401009` and update display to "Dermatophagoides pteronyssinus" or use a more specific house dust mite code

### 2. WRONG CODE - Medical enzyme allergy (Line 251-255)
- **Current:** `196546001` with display "Medical enzyme allergy"
- **Actual SNOMED display:** "Cyst of oral soft tissue" - COMPLETELY WRONG!
- **Suggested code:** `295107003` "Medicinal enzyme allergy" (but this is INACTIVE)
- **Fix:** Need to find an active replacement or remove this mapping

### 3. WRONG CODE - Allergy to chemical substance (Line 199-201)
- **Current:** `441900009` with display "Allergy to chemical substance"
- **Actual SNOMED display:** "Chemical" (substance, not an allergy finding)
- **Fix:** Need to find the correct "Allergy to chemical substance" code or create a broader mapping

## Inactive Codes (Should Replace)

### 4. INACTIVE - Allergy to muscle relaxants (Line 233-237)
- **Current:** `294221004` with display "Allergy to muscle relaxants"
- **Status:** Code exists as "Allergy to skeletal muscle relaxant" but is **INACTIVE**
- **Fix:** Find active replacement or use broader parent code

### 5. INACTIVE - Allergy to cosmetic (Line 203-207)
- **Current:** `417982003` with display "Allergy to cosmetic"
- **Status:** Code exists as "Allergy to cosmetic material" but is **INACTIVE**
- **Fix:** Find active replacement or use broader parent code

## Minor Display Mismatches (Acceptable but could improve)

### 6. Storage mite (Line 257-261)
- **Current:** `84073006` with display "Storage mite"
- **Actual SNOMED display:** "Mite" (generic)
- **Status:** Relationship marked as `source-is-narrower-than-target` which is appropriate
- **Note:** The specific "Storage mite" code `260150001` exists but is INACTIVE

### 7. Caffeinated beverage (Line 185-189)
- **Current:** `792905007` with display "Caffeined beverage"
- **Actual SNOMED display:** "Beverage containing caffeine" (synonym: "Caffeinated beverage")
- **Fix:** Correct typo "Caffeined" -> "Caffeinated"

### 8. Molds mushrooms (Line 43-45)
- **Current:** `23988000` with display "Molds mushrooms"
- **Actual SNOMED display:** "Kingdom Fungi mold spore"
- **Note:** Consider updating display for clarity

### 9. Herbs and spices vs Spices (Line 61-63)
- **Current:** `227374009` with display "Spices"
- **Actual SNOMED display:** "Herbs and spices"
- **Note:** SNOMED concept is broader than the local term

---

## Validation Status by Category

### Pollen & Environmental
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 256277009 | Grass pollen | Grass pollen | ✅ OK |
| 782576004 | Tree pollen | Tree pollen | ✅ OK |
| 419604006 | Weed pollen | Weed pollen | ✅ OK |
| 256260009 | European house dust mite | Tree and shrub pollen | ❌ WRONG CODE |
| 84073006 | Storage mite | Mite | ⚠️ Uses broader code (correct relationship) |

### Fungi & Microorganisms
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 23988000 | Molds mushrooms | Kingdom Fungi mold spore | ⚠️ Minor display diff |
| 37017009 | Helminth | Helminth | ✅ OK |

### Food Categories
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 227313005 | Legumes | Pulse vegetable (syn: Legume) | ✅ OK |
| 23182003 | Cereals / Grains | Cereal | ✅ OK |
| 227374009 | Spices | Herbs and spices | ⚠️ Minor diff |
| 72511004 | Fruits | Fruit | ✅ OK |
| 22836000 | Vegetables | Vegetable | ✅ OK |
| 13577000 | Nuts | Nut | ✅ OK |
| 264337003 | Seeds | Seed | ✅ OK |
| 70813002 | Milk | Milk | ✅ OK |
| 102263004 | Egg | Eggs (edible) | ✅ OK |
| 44027008 | Seafood / Shellfish | Seafood | ✅ OK |
| 28647000 | Meat | Meat | ✅ OK |
| 423703004 | Fermented food | Fermented food | ✅ OK |
| 447961002 | Allergy to dietary mushroom | Allergy to dietary mushroom | ✅ OK |

### Beverages
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 53527002 | Alcoholic beverage | Alcoholic beverage | ✅ OK |
| 792905007 | Caffeined beverage | Beverage containing caffeine | ⚠️ TYPO in FSH |
| 818989004 | Sugar sweetened beverage | Sugar sweetened beverage | ✅ OK |
| 439191000124108 | Medical beverage | Medical beverage | ✅ OK |

### Insect Venoms
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 710939007 | Fire ant venom | Fire ant venom | ✅ OK |
| 288328004 | Bee venom | Bee venom | ✅ OK |
| 256440004 | Wasp venom | Wasp venom | ✅ OK |
| 151201000119107 | Allergy to insect venom | Allergy to insect venom | ✅ OK |

### Animals
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 14241002 | Cockroach | Cockroach | ✅ OK |
| 448771007 | Domestic dog | Domestic dog | ✅ OK |
| 448169003 | Domestic cat | Domestic cat | ✅ OK |
| 717234006 | Allergy to animal | Allergy to animal protein (syn) | ✅ OK |

### Plants & Materials
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 111088007 | Latex | Latex | ✅ OK |
| 260203002 | Ficus spp | Ficus spp | ✅ OK |
| 703926003 | Allergy to plant fibre | Allergy to plant fiber | ✅ OK (GB spelling) |

### Drug Allergies
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 429239002 | Allergy to sulfonamide antibiotic | Allergy to sulfonamide antibiotic | ✅ OK |
| 294221004 | Allergy to muscle relaxants | Allergy to skeletal muscle relaxant | ❌ INACTIVE |
| 293718005 | Allergy to local anaesthetic | Allergy to local anesthetic | ✅ OK |
| 416098002 | Allergy to drugs | Allergy to drug | ✅ OK |
| 196546001 | Medical enzyme allergy | Cyst of oral soft tissue | ❌ WRONG CODE |
| 15919911000119108 | Allergic reaction caused by analgesic | Allergic reaction caused by analgesic | ✅ OK |

### Other
| Code | FSH Display | SNOMED Display | Status |
|------|-------------|----------------|--------|
| 1155942004 | Allergy to metal | Allergy to metal and/or metal compound | ✅ OK |
| 441900009 | Allergy to chemical substance | Chemical | ❌ WRONG CODE |
| 417982003 | Allergy to cosmetic | Allergy to cosmetic material | ❌ INACTIVE |
| 16067171000119102 | Allergy to food additive | Allergy to food additive | ✅ OK |

---

## Recommended Actions

1. **Immediate fixes needed:**
   - Replace `256260009` with `264401009` for European house dust mite
   - Replace `196546001` - find correct code for medical enzyme allergy
   - Replace `441900009` - find correct code for allergy to chemical substance
   - Fix typo: "Caffeined" -> "Caffeinated"

2. **Review inactive codes:**
   - `294221004` - muscle relaxant allergy
   - `417982003` - cosmetic allergy
   - Consider using broader parent concepts or finding active replacements

3. **Optional display updates:**
   - Consider aligning FSH displays more closely with official SNOMED preferred terms
