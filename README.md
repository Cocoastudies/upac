#UPAC APP
Esse repositório tem o proposito de conter o código-fonte do aplicativo da União Protetora dos Animais Carentes (UPAC) de Fortaleza.
Esse app nasce da ideia da comunidade de desenvolvedores iOS de querer estudar e colocar em prática o seu aprendizado.

##Informações sobre o desenvolvimento
- **Linguagem Utilizada:** Swift
- **IDE:** Xcode
- **Workflow:** Git Flow
- **Gerenciador de Dependências:** CocoaPods
- **Ferramenta de gerenciamento:** Taiga

##Dependências
- **Requisições HTTP:** Alamofire
- **JSON Model:** ObjectMapper
- **BaaS:** Firebase
- **Analytics:** GoogleAnalytics

##Funcionamento do Git Flow
O Git Flow é um modelo de organização de branches. Nesse modelo, existem duas branches que nunca morrem: **Master** e **Develop**.

A **Master** é onde fica o código em nível de produção.

A **Develop** é onde fica o código preparatório para o deploy. Ou seja, quando features são terminadas, elas são juntadas à essa branch.

Para desenvolver as features, são criadas novas branchs a partir da **Develop** e denominadas **feature/nome-da-feature**. Essa é a branch no qual são desenvolvidos novos recursos para esse projeto. Quando a feature é completada, um merge dela é feito na **Develop**.

Para fazer um release é criada uma branch chamada **release/nome-do-release**. São branchs com nível de confiança maior do que a branch **Develop** e que se encontram em nível de preparação para ser juntada com a **Master**. Os merges dessa branch vão tanto para a **Release** quando para a **Master**.

As branchs do tipo **hotfix/nome-do-hotfix** são branches no qual são realizadas correções de bugs críticos encontrados em ambiente de produção.

*Fonte: http://fjorgemota.com/git-flow-uma-forma-legal-de-organizar-repositorios-git/*

O [SourceTree](https://www.sourcetreeapp.com/) é um excelente git client que facilita o uso do Git Flow, podendo ser feito com apenas alguns cliques na interface.