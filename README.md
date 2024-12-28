# dotfiles

Trata-se de arquivos ocultos ("dotfiles") utilizados para configuração de workstation para exercício da advocacia utilizando Linux. Tais arquivos farão o seguinte:

a) instalar a fonte Calibri, padrão de mercado para e-mails e petições, desativando a fontes de bitmap incorporadas (veja https://wiki.archlinux.org/title/Font_configuration);

b) configurar a fonte Calibri acima mencionada como a fonte utilizada pelo Evolution, o mais completo gerenciador de e-mails para Linux, seja ele instalado enquanto Flatpak ou pacote nativo da distribuição utilizada (rpm ou deb, por exemplo);

c) instalar localmente os pacotes necessários para utilizar certificado digital do eSAJ via Firefox (Lacuna Web PKI e Softplan Web Signer), sem a necessidade de instalar os pacotes deb ou rpm fornecidos;

d) instalar e configurar o módulo de token Safesign, fornecido pela OAB-SP, nas configurações de pk11-kit, a fim de que possa ser utilizado de forma geral pelo sistema, inclusive em diversos navegadores;

e) desabilitar o módulo opensc, que em geral acompanha a instalação padrão do Fedora, uma vez que gera incompatibilidades com o certificado digital Safesign.

OBS: Os arquivos fazem referência ao meu usuário "pedro"; sua utilização dependerá da adaptação para o nome do usuário que irão utilizá-los.
