$Lang = (Get-Culture).TwoLetterISOLanguageName

$Global:Text = switch ($Lang) {

    es {
        @{
            ADMIN       = 'Ejecutar como Administrador.'
            START_OPT   = 'INICIANDO OPTIMIZACIÓN DEL SISTEMA...'
            DONE        = 'OPTIMIZACIÓN COMPLETA. REINICIO RECOMENDADO.'
            DISK        = 'Optimizando el rendimiento del disco...'
            CLEANUP     = 'Limpiando el sistema...'
            NETWORK     = 'Configurando la red...'
            POWER       = 'Ajustando opciones de energia...'
            SERVICES    = 'Optimizando servicios...'
            PERFORMANCE = 'Mejorando el rendimiento...'
            PRIVACY     = 'Ajustando configuraciones de privacidad...'
            AI_QUESTION = '¿Desea desactivar las funciones de Inteligencia Artificial?'
            AI_PROMPT   = 'Ingrese S para SÍ o N para NO:'
            AI_SKIP     = 'Funciones de IA no modificadas.'
            AI_DISABLE  = 'Desactivando funciones de IA...'
        }
    }

    pt {
        @{
            ADMIN       = "Executar como Administrador."
            START_OPT   = "INICIANDO OTIMIZAÇÃO DO SISTEMA..."
            DONE        = "OTIMIZAÇÃO CONCLUÍDA. REINICIALIZAÇÃO RECOMENDADA."
            DISK        = "Otimizando o desempenho do disco..."
            CLEANUP     = "Limpando o sistema..."
            NETWORK     = "Configurando a rede..."
            POWER       = "Ajustando opções de energia..."
            SERVICES    = "Otimizando serviços..."
            PERFORMANCE = "Melhorando o desempenho..."
            PRIVACY     = "Ajustando configurações de privacidade..."
            AI_QUESTION = "Deseja desativar as funções de Inteligência Artificial?"
            AI_PROMPT   = "Digite S para SIM ou N para NAO:"
            AI_SKIP     = "Funções de IA não modificadas."
            AI_DISABLE  = "Desativando funções de IA..."
        }
    }

    fr {
        @{
            ADMIN       = "Exécutez en tant qu'administrateur."
            START_OPT   = "DÉMARRAGE DE L'OPTIMISATION DU SYSTÈME..."
            DONE        = "OPTIMISATION TERMINÉE. REDÉMARRAGE RECOMMANDÉ."
            DISK        = "Optimisation des performances du disque..."
            CLEANUP     = "Nettoyage du système..."
            NETWORK     = "Configuration du réseau..."
            POWER       = "Ajustement des options d'alimentation..."
            SERVICES    = "Optimisation des services..."
            PERFORMANCE = "Amélioration des performances..."
            PRIVACY     = "Ajustement des paramètres de confidentialité..."
            AI_QUESTION = "Voulez-vous désactiver les fonctionnalités d'intelligence artificielle?"
            AI_PROMPT   = "Tapez O pour OUI ou N pour NON:"
            AI_SKIP     = "Fonctionnalités d'IA non modifiées."
            AI_DISABLE  = "Désactivation des fonctionnalités d'IA..."
        }
    }

    it {
        @{
            ADMIN       = "Esegui come amministratore."
            START_OPT   = "AVVIO OTTIMIZZAZIONE DEL SISTEMA..."
            DONE        = "OTTIMIZZAZIONE COMPLETATA. RIAVVIO RACCOMANDATO."
            DISK        = "Ottimizzazione delle prestazioni del disco..."
            CLEANUP     = "Pulizia del sistema..."
            NETWORK     = "Configurazione della rete..."
            POWER       = "Regolazione delle opzioni di alimentazione..."
            SERVICES    = "Ottimizzazione dei servizi..."
            PERFORMANCE = "Miglioramento delle prestazioni..."
            PRIVACY     = "Regolazione delle impostazioni sulla privacy..."
            AI_QUESTION = "Vuoi disabilitare le funzionalità di Intelligenza Artificiale?"
            AI_PROMPT   = "Digita S per SÌ o N per NO:"
            AI_SKIP     = "Funzionalità di IA non modificate."
            AI_DISABLE  = "Disabilitazione delle funzionalità di IA..."
        }
    }

    de {
        @{
            ADMIN       = "Als Administrator ausführen."
            START_OPT   = "SYSTEMOPTIMIERUNG WIRD GESTARTET..."
            DONE        = "OPTIMIERUNG ABGESCHLOSSEN. NEUSTART EMPFOHLEN."
            DISK        = "Optimierung der Festplattenleistung..."
            CLEANUP     = "Systembereinigung..."
            NETWORK     = "Netzwerkkonfiguration..."
            POWER       = "Anpassung der Energieeinstellungen..."
            SERVICES    = "Optimierung der Dienste..."
            PERFORMANCE = "Leistungsverbesserung..."
            PRIVACY     = "Anpassung der Datenschutzeinstellungen..."
            AI_QUESTION = "Möchten Sie die Funktionen der Künstlichen Intelligenz deaktivieren?"
            AI_PROMPT   = "Geben Sie J für JA oder N für NEIN ein:"
            AI_SKIP     = "KI-Funktionen wurden nicht geändert."
            AI_DISABLE  = "Deaktivierung der KI-Funktionen..."
        }
    }

    default {
        @{
            ADMIN       = "Run as Administrator."
            START_OPT   = "STARTING SYSTEM OPTIMIZATION..."
            DONE        = "OPTIMIZATION COMPLETE. RESTART RECOMMENDED."
            DISK        = "Optimizing disk performance..."
            CLEANUP     = "Cleaning up the system..."
            NETWORK     = "Configuring network..."
            POWER       = "Adjusting power settings..." 
            SERVICES    = "Optimizing services..."
            PERFORMANCE = "Improving performance..."
            PRIVACY     = "Adjusting privacy settings..."
            AI_QUESTION = "Do you want to disable Artificial Intelligence features?"
            AI_PROMPT   = "Type Y for YES or N for NO:"
            AI_SKIP     = "AI features were not modified."
            AI_DISABLE  = "Disabling AI features..."
        }
    }
}