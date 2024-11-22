#!/bin/bash
name=Code
type=.sh
amount=1
while [[ -e "${name}${amount}${type}" ]]; do
	((amount ++))
done

touch ${name}${amount}${type}

subl ${name}${amount}${type}

chmod 740 "${name}${amount}${type}"

echo "#!/bin/bash" >${name}${amount}${type}
