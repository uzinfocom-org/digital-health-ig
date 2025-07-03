# Endpoints

- **Playground**: `playground.medcore.uz/fhir`
- **Production**: `fhir.medcore.uz`


# Security and authentication

To ensure security, confidentiality, and reliable access control within the National Digital Health Platform (DHP), an authentication and authorization system based on the international OAuth 2.0 standard has been implemented.
Supporting both frontend and backend application scenarios. A centralized Single Sign-On (SSO) server ensures secure identification of all platform participants - from patients and healthcare providers to external systems.

DHP supports two main authentication scenarios:
- Backend applications - via the `client_credentials` grant (no user interaction required),
- Frontend applications - via the `authorization code` grant with `redirect_uri` support and optional PKCE.

## Backend Integration

This section describes the process for obtaining an access token for backend applications using the OAuth 2.0 protocol with the `client_credentials` grant type.
This flow is used when a service needs to access protected APIs on behalf of itself, not a user.

### Client Configuration

The backend client must be registered on the SSO server. Upon registration, you will receive:
- **client_id** - the identifier issued by the provider
- **client_secret** - the secret key issued by the provider

### Obtain token

**Request**

```http request
POST /oauth/token
```

**Request body**

| Parameter      | Value               |
|----------------|---------------------|
| grant\_type    | client\_credentials |
| client\_id     | \<client\_id>       |
| client\_secret | \<client\_secret>   |

### Error Responses

* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-dce119ab-d60d-4112-acba-cb31503753b5/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">400 Bad Request</a>
* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-b279c65c-72e6-4161-be4c-0281fed405bd/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">401 Unauthorized</a>

## Frontend Integration

This section describes how frontend applications can authorize users via the SSO server using the standard OAuth 2.0 `Authorization Code` Grant. This flow ensures a unified login and secure user authentication within the DHP ecosystem.

### Client Configuration

The frontend application must be registered with the SSO server. Upon registration, you will receive:

- **client_id** - identifier issued by the provider
- **redirect_uri** - URL provided by your application

### Authorization Flow

**1 Redirect the user to the SSO frontend:**

```http request
GET sso.medcore.uz
```

**Parameters**:

| Parameter     | Value            |
|---------------|------------------|
| client\_id    | \<client\_id>    |
| redirect\_uri | \<redirect\_uri> |

**2 Authorization Code:**

After successful login, the user will be redirected back to the `redirect_uri` with an authorization code.

**3 Exchange the Code for a Token:**

This exchange must be done on the backend to protect the `client_secret`. If your application does not have a backend, use `PKCE` instead.

**4 Use the Token:**

Include the access token in each request:

```http request
Authorization: Bearer <access_token>
```

# Error handling

*\<to be filled in - describe error handling here\>*
