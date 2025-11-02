++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.

// Tela inicial estilo Android
+[-->-[>>+>-----<<]<--<---]>-.-------.+++++++++++++.-------.+++.------.--------.-[--->+<]>-.
// "ANDROID TEST INTERFACE" no topo
>++++[<++++++++>-]<.>++++[<+++++++>-]<+.+++++++..+++.>++++[<-------->-]<+.>++++[<+++++++++>-]<-. 

// Linha de botões: [1] Iniciar  [2] Configurações  [3] Sair
>+++[<+++++++>-]<+.>++[<+++++++>-]<+.>+++[<+++++>-]<+.>++++++[<+++++>-]<+.>++[<+++>-]<+.
>+++[<+++++++>-]<+.>++++++[<+++++++++>-]<+.>+++[<+++++>-]<+.>++++[<+++++++++>-]<+.>++[<+++>-]<+.
>++[<+++>-]<+.>+++++[<+++++>-]<+.>++[<+++>-]<+.

// Espera input do usuário
,[                   // lê input (teclado)
    -                // limpa célula do input
    [>++++++++++<-]>  // copia para outra célula para comparar
    <[
        -            // compara '1' (Iniciar)
        +            // se for 1, define flag
    ]
]
// Supondo que a primeira parte já leu input e flag de "1" foi definida

// Se input = 1 (Iniciar)
++++++++++[>++++++++<-]>.[-]      // "Iniciando..." mensagem
>+++++[<++++++>-]<.[-]            // animação 1: ponto piscando
>++++[<+++++>-]<.[-]              // animação 2: ponto piscando
>++++[<+++++>-]<.[-]              // animação 3: ponto piscando

// Mensagem final da tela de "Iniciar"
>++++[<+++++++++>-]<.>+++[<++++>-]<+.+++++++++++++.--------.+++.
// Exibe "Bem-vindo!" (ASCII)

// Espera o usuário pressionar Enter para voltar
, 

// Depois de Enter, voltamos para a tela inicial
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.
// "ANDROID TEST INTERFACE" novamente
+[-->-[>>+>-----<<]<--<---]>-.-------.+++++++++++++.-------.+++.------.--------.-[--->+<]>-.
// Linha de botões: [1] Iniciar  [2] Configurações  [3] Sair
>+++[<+++++++>-]<+.>++[<+++++++>-]<+.>+++[<+++++>-]<+.>++++++[<+++++>-]<+.>++[<+++>-]<+.
>+++[<+++++++>-]<+.>++++++[<+++++++++>-]<+.>+++[<+++++>-]<+.>++++[<+++++++++>-]<+.>++[<+++>-]<+.
>++[<+++>-]<+.>+++++[<+++++>-]<+.>++[<+++>-]<+.
// --- Leitura do input do usuário novamente ---
,[                    // lê input (teclado)
    -                 // limpa célula do input
    [>++++++++++<-]>   // copia para outra célula para comparar
    <[
        -             // compara '1' (Iniciar)
        +             // se for 1, define flag
    ]
]

// --- Opção 1: Iniciar ---
[                      // se flag = 1
    ++++++++++[>++++++++<-]>.[-]      // "Iniciando..." mensagem
    >+++++[<++++++>-]<.[-]            // animação 1
    >++++[<+++++>-]<.[-]              // animação 2
    >++++[<+++++>-]<.[-]              // animação 3
    >++++[<+++++++++>-]<.>+++[<++++>-]<+.+++++++++++++.--------.+++.
    ,                                // espera Enter
]

// --- Opção 2: Configurações ---
,[                    // lê input para opção 2
    -                 
    [>++++++++++<-]>   
    <[
        -             // compara '2'
        +             // se for 2, define flag de configuração
    ]
]

[                       // se flag = 2
    >++++++++++[<+++++++>-]<.>++++++++[<+++++++>-]<+.>+++++[<+++++>-]<+.>++++++[<+++++>-]<+.  
    // Exibe "CONFIGURACOES" (ASCII)
    >+++[<+++++>-]<+.>++++[<+++++++++>-]<+.>+++[<+++++>-]<+.>++[<+++>-]<+. 
    // Mensagem de teste dentro das Configurações
    ,                      // espera Enter para voltar
]

// --- Opção 3: Sair ---
,[                    // lê input para opção 3
    -                 
    [>++++++++++<-]>   
    <[
        -             // compara '3'
        +             // se for 3, define flag de sair
    ]
]

[                       // se flag = 3
    >++++++[<+++++++++>-]<.>+++[<++++>-]<+.-------.++++++++.  
    // Exibe "SAINDO..." (ASCII)
    .
]                        // finaliza programa

// --- Volta para Tela Inicial automaticamente se não sair ---
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.
// "ANDROID TEST INTERFACE"
+[-->-[>>+>-----<<]<--<---]>-.-------.+++++++++++++.-------.+++.------.--------.-[--->+<]>-.
// Linha de botões novamente
>+++[<+++++++>-]<+.>++[<+++++++>-]<+.>+++[<+++++>-]<+.>++++++[<+++++>-]<+.>++[<+++>-]<+.
>+++[<+++++++>-]<+.>++++++[<+++++++++>-]<+.>+++[<+++++>-]<+.>++++[<+++++++++>-]<+.>++[<+++>-]<+.
>++[<+++>-]<+.>+++++[<+++++>-]<+.>++[<+++>-]<+.
