# Contributing

## Engineering standard

Contributions must preserve the repository's distinction between:

- verified IBM/Red Hat product behavior;
- lab assumptions;
- architectural recommendations;
- example configuration;
- release-specific procedures.

Never add an IBM-specific command, CRD, API field or ConfigMap key unless it is verified against the deployed release documentation or captured from a supported product-generated object.

## Pull requests

Every PR should include:

- requirement(s) addressed;
- release/version impact;
- implementation change;
- validation method;
- evidence impact;
- security impact;
- rollback considerations.

Run the Markdown validation workflow before requesting review.

## Evidence

Use synthetic data only. Never commit passwords, API tokens, kubeconfigs, certificates or customer information.
