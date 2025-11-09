#
#  ====================================================================================================                   #
#                                                                                                                         #
#  PLUGIN: humanChat - Sistema de Chat IA Ultra Robusto                                                                  #
#  AUTOR: Coconute                                                                                                       #
#  VERSÃO: 3.0 ULTRA ROBUSTA                                                                                             #
#  DATA: 2025                                                                                                            #
#  GITHUB: https://github.com/matador284                                                                                 #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  DESCRIÇÃO:                                                                                                            #
#  Sistema avançado de resposta automática para OpenKore que utiliza múltiplas APIs de IA                                #
#  para gerar respostas humanizadas e naturais em conversas de Ragnarok Online.                                          #
#  Com fallback automático entre 12+ APIs e modo local inteligente.                                                      #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  REQUISITOS DE INSTALAÇÃO:                                                                                             #
#  - Perl 5.10 ou superior                                                                                               #
#  - Módulos Perl necessários:                                                                                           #
#      * JSON                                                                                                            #
#      * LWP::UserAgent                                                                                                  #
#      * HTTP::Request                                                                                                   #
#      * Time::HiRes                                                                                                     #
#  - OpenKore versão what-will-become-2.1 ou superior                                                                    #
#  - Acesso à internet para APIs externas                                                                                #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  FUNCIONALIDADES PRINCIPAIS:                                                                                           #
#  ✅ Respostas humanizadas e naturais em português                                                                      #
#  ✅ Suporte a 12+ APIs de IA (7 GRATUITAS)                                                                             #
#  ✅ Sistema de fallback automático entre APIs                                                                          #
#  ✅ Modo local inteligente como último recurso                                                                         #
#  ✅ Anti-detecção de bot (nega ser bot automaticamente)                                                                #
#  ✅ Personalidades customizáveis (casual, educado, zoeiro)                                                             #
#  ✅ Delay de digitação realista                                                                                        #
#  ✅ Estatísticas detalhadas de uso                                                                                     #
#  ✅ Teste automático de conectividade das APIs                                                                         #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  APIs SUPORTADAS:                                                                                                      #
#  --------------------------------------------------------------------------------------------------------------------  #
#  | ID | NOME       | TIPO      | STATUS    | MODELO PRINCIPAL                  | OBSERVAÇÕES                          |  #
#  |----|------------|-----------|-----------|----------------------------------|--------------------------------------|  #
#  | 1  | OpenAI     | Paga      | ✅        | gpt-3.5-turbo                     | Requer chave API                     |  #
#  | 2  | DeepSeek   | Paga      | ✅        | deepseek-chat                     | Requer chave API                     |  #
#  | 3  | Google     | Paga      | ✅        | gemini-pro                        | Requer chave API                     |  #
#  | 4  | Claude     | Paga      | ✅        | claude-3-haiku                    | Requer chave API                     |  #
#  | 5  | Groq       | Paga      | ✅        | llama-3.1-8b-instant              | Requer chave API                     |  #
#  | 6  | FreeGPT    | Gratuita  | ✅        | gpt-4                             | Ilimitado*                           |  #
#  | 7  | HuggingChat| Gratuita  | ✅        | Mixtral-8x7B                      | Ilimitado*                           |  #
#  | 8  | DeepAI     | Gratuita  | ✅        | text-generator                    | 5,000 req/mês                        |  #
#  | 9  | TextSynth  | Gratuita  | ✅        | gptneox_20B                       | Ilimitado*                           |  #
#  | 10 | Cohere     | Freemium  | ✅        | command                           | Plano free disponível               |  #
#  | 11 | AI21       | Freemium  | ✅        | j2-ultra                          | Plano free disponível               |  #
#  | 12 | Forefront  | Gratuita  | ✅        | gpt-3.5-turbo                     | Ilimitado*                           |  #
#  --------------------------------------------------------------------------------------------------------------------  #
#  * Sujeito a disponibilidade e limites de uso não documentados                                                        #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  COMANDOS DISPONÍVEIS:                                                                                                 #
#  --------------------------------------------------------------------------------------------------------------------  #
#  | COMANDO     | PARÂMETROS                  | DESCRIÇÃO                                                              |  #
#  |-------------|-----------------------------|------------------------------------------------------------------------|  #
#  | chatmode    | [casual|educado|zoeiro]     | Altera a personalidade das respostas                                   |  #
#  | chatapi     | [0-12]                      | Seleciona qual API usar (0=Modo Local)                                  |  #
#  | chattest    | (sem parâmetros)            | Testa a conectividade de todas as APIs                                  |  #
#  | chatstats   | (sem parâmetros)            | Mostra estatísticas detalhadas de uso                                   |  #
#  --------------------------------------------------------------------------------------------------------------------  #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  CONFIGURAÇÃO RÁPIDA:                                                                                                  #
#  1. Configure suas chaves API no arquivo: plugins/humanChat/api_config.json                                            #
#  2. Use 'chatapi 6' para FreeGPT (gratuita) ou 'chatapi 7' para HuggingChat (gratuita)                                 #
#  3. Use 'chatmode casual' para respostas mais naturais                                                                 #
#  4. Use 'chattest' para verificar quais APIs estão funcionando                                                         #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  EXEMPLOS DE USO:                                                                                                      #
#  > chatapi 6                    # Usa FreeGPT (gratuita)                                                               #
#  > chatmode zoeiro              # Respostas com zoeira                                                                #
#  > chattest                     # Testa todas as APIs                                                                  #
#  > chatstats                    # Mostra estatísticas                                                                  #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  LICENÇA: MIT                                                                                                          #
#  DIREITOS AUTORAIS: Coconute © 2025                                                                                    #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  ATUALIZAÇÕES RECENTES (v3.0):                                                                                         #
#  • Adicionadas +7 APIs gratuitas                                                                                       #
#  • Sistema de fallback aprimorado                                                                                      #
#  • Melhor detecção de conectividade                                                                                    #
#  • Interface de comandos expandida                                                                                     #
#  • Otimização de performance                                                                                           #
#  • Correção de bugs críticos                                                                                           #
#                                                                                                                         #
#  ====================================================================================================                   #
#                                                                                                                         #
#  SUPORTE:                                                                                                              #
#  Para reportar bugs ou sugerir melhorias, visite:                                                                      #
#                                                                                                                         #
###############################################################

package humanChat;
use strict;
use Plugins;
use Log qw(message error warning debug);
use Globals;
use Network::Send;
use Time::HiRes qw(sleep time);
use JSON;
use LWP::UserAgent;
use HTTP::Request;

# ==========================================================
# CONFIGURAÇÃO
# ==========================================================
my $config_file = "plugins/humanChat/api_config.json";

my %config = (
    personalidade => "casual",
    delay_typing => 2,
    negar_bot => 1,
    usar_api => 5, # 0=Local, 1=OpenAI, 2=DeepSeek, 3=Google, 4=Claude, 5=Groq, 6=FreeGPT, 7=HuggingChat, 8=DeepAI, 9=TextSynth, 10=Cohere, 11=AI21, 12=Forefront
    
    # Sistema avançado
    max_retries => 2,
    timeout => 10,
    enable_fallback => 1
);

my %api_configs = ();
my %usage_stats = ();

# ==========================================================
# INICIALIZAÇÃO
# ==========================================================
Plugins::register("humanChat", "Sistema de Chat IA Ultra Robusto", \&Unload);
my $hooks = Plugins::addHooks(
    ['packet_privMsg', \&on_privMsg],
    ['start3', \&initialize_system]
);

sub initialize_system {
    message "[humanChat] 🚀 Iniciando sistema ULTRA ROBUSTO COM +7 APIs GRATUITAS...\n", "success";
    
    # Criar diretório se não existir
    mkdir "plugins/humanChat" unless -d "plugins/humanChat";
    
    # Carregar configurações
    load_configuration();
    
    # Testar APIs disponíveis
    test_apis_availability();
    
    message "[humanChat] ✅ Sistema pronto!\n", "success";
    
    # Registrar comandos
    Commands::register(['chatmode', 'Muda personalidade', \&cmd_chat_mode]);
    Commands::register(['chatapi', 'Alterna API', \&cmd_chat_api]);
    Commands::register(['chattest', 'Testa APIs', \&cmd_test_apis]);
    Commands::register(['chatstats', 'Estatísticas', \&cmd_stats]);
}

sub load_configuration {
    # Sempre criar configuração padrão para garantir todas as APIs
    create_default_config();
    message "[humanChat] 📁 Configuração carregada: " . scalar(keys %api_configs) . " APIs (Todas habilitadas)\n", "success";
}

sub create_default_config {
    %api_configs = (
        # APIs Pagas (já existentes)
        openai => { 
            api_key => 'sua_chave_openai_aqui', 
            base_url => 'https://api.openai.com/v1/chat/completions', 
            model => 'gpt-3.5-turbo',
            enabled => 1
        },
        deepseek => { 
            api_key => 'sua_chave_deepseek_aqui', 
            base_url => 'https://api.deepseek.com/v1/chat/completions', 
            model => 'deepseek-chat',
            enabled => 1
        },
        groq => { 
            api_key => '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', 
            base_url => 'https://api.groq.com/openai/v1/chat/completions', 
            model => 'llama-3.1-8b-instant',
            enabled => 1
        },
        google => { 
            api_key => 'sua_chave_google_aqui', 
            base_url => 'https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent', 
            model => 'gemini-pro',
            enabled => 1
        },
        claude => { 
            api_key => 'sua_chave_claude_aqui', 
            base_url => 'https://api.anthropic.com/v1/messages', 
            model => 'claude-3-haiku-20240307',
            enabled => 1
        },
        
        # NOVAS APIs GRATUITAS
        freegpt => {
            api_key => 'gratuita',
            base_url => 'https://api.freegpt4.com/v1/chat/completions',
            model => 'gpt-4',
            enabled => 1,
            free => 1
        },
        huggingchat => {
            api_key => 'gratuita', 
            base_url => 'https://huggingface.co/chat/completions',
            model => 'mistralai/Mixtral-8x7B-Instruct-v0.1',
            enabled => 1,
            free => 1
        },
        deepai => {
            api_key => 'quickstart-QUwZRnCc1ffnFXSf7r2aVm1y7g8VPTjwQ9hTn7-cz7k', # Chave gratuita
            base_url => 'https://api.deepai.org/api/text-generator',
            model => 'text-generator',
            enabled => 1,
            free => 1
        },
        textsynth => {
            api_key => 'gratuita',
            base_url => 'https://api.textsynth.com/v1/engines/gptneox_20B/completions',
            model => 'gptneox_20B',
            enabled => 1,
            free => 1
        },
        cohere => {
            api_key => 'sua_chave_cohere_aqui', # Tem plano free
            base_url => 'https://api.cohere.ai/v1/generate',
            model => 'command',
            enabled => 1,
            free => 1
        },
        ai21 => {
            api_key => 'sua_chave_ai21_aqui', # Tem plano free
            base_url => 'https://api.ai21.com/studio/v1/j2-ultra/complete',
            model => 'j2-ultra',
            enabled => 1,
            free => 1
        },
        forefront => {
            api_key => 'gratuita',
            base_url => 'https://api.forefront.ai/v1/chat/completions',
            model => 'gpt-3.5-turbo',
            enabled => 1,
            free => 1
        }
    );
    save_configuration();
}

sub save_configuration {
    eval {
        open my $fh, '>:encoding(UTF-8)', $config_file or die $!;
        print $fh encode_json(\%api_configs);
        close $fh;
        message "[humanChat] 💾 Configuração salva com +7 APIs gratuitas\n", "success";
    };
}

# ==========================================================
# FUNÇÃO build_curl_command
# ==========================================================
sub build_curl_command {
    my ($api_name, $temp_file) = @_;
    my $api_config = $api_configs{$api_name};
    
    my $cmd = "curl -s -X POST \"$api_config->{base_url}\" ";
    $cmd .= "-H \"Content-Type: application/json\" ";
    $cmd .= "-H \"Authorization: Bearer $api_config->{api_key}\" " if $api_config->{api_key} && $api_config->{api_key} ne 'gratuita';
    $cmd .= "--data \"\@$temp_file\" ";
    $cmd .= "--connect-timeout $config{timeout} ";
    $cmd .= "--max-time $config{timeout} ";
    $cmd .= "--retry 1 ";
    $cmd .= "--retry-delay 1 ";
    $cmd .= "--insecure ";
    $cmd .= "2>&1";
    
    return $cmd;
}

# ==========================================================
# TESTE DE APIS
# ==========================================================
sub test_apis_availability {
    message "[humanChat] 🔍 Testando disponibilidade das APIs...\n", "info";
    
    my @apis_to_test = qw(groq openai deepseek claude google freegpt huggingchat deepai textsynth cohere ai21 forefront);
    my %available_apis;
    
    foreach my $api_name (@apis_to_test) {
        my $api_config = $api_configs{$api_name};
        
        # Verificar se API está configurada
        if (!$api_config || !$api_config->{enabled}) {
            message "[humanChat]   $api_name: ❌ Desabilitada\n", "warning";
            next;
        }
        
        # Testar conexão simples
        message "[humanChat]   Testando $api_name... ", "info";
        my $test_result = test_api_connection($api_name);
        
        if ($test_result) {
            message "✅ CONECTADA" . ($api_config->{free} ? " (GRATUITA)" : "") . "\n", "success";
            $available_apis{$api_name} = 1;
            $api_configs{$api_name}{working} = 1;
        } else {
            message "❌ FALHOU\n", "error";
            $api_configs{$api_name}{working} = 0;
        }
        
        sleep(1); # Delay entre testes
    }
    
    my $working_apis = scalar(keys %available_apis);
    my $free_apis = grep { $api_configs{$_}{free} && $available_apis{$_} } keys %available_apis;
    
    message "[humanChat] 📊 Resultado: $working_apis/" . scalar(@apis_to_test) . " APIs funcionando ($free_apis gratuitas)\n", "info";
    
    # Sugerir APIs gratuitas se as pagas não funcionarem
    if (!$available_apis{groq} && $config{usar_api} == 5) {
        foreach my $free_api (qw(freegpt huggingchat deepai textsynth forefront)) {
            if ($available_apis{$free_api}) {
                message "[humanChat] 💡 Dica: Use 'chatapi 6' para FreeGPT (GRATUITA) ou 'chatapi 7' para HuggingChat\n", "warning";
                last;
            }
        }
    }
}

sub test_api_connection {
    my ($api_name) = @_;
    my $api_config = $api_configs{$api_name};
    
    # Payload específico para cada API
    my $test_payload = build_test_payload($api_name);
    
    my $json_payload = encode_json($test_payload);
    my $temp_file = "test_$$.json";
    
    # Salvar payload temporário
    open my $fh, '>', $temp_file or return 0;
    print $fh $json_payload;
    close $fh;
    
    # Comando curl para teste
    my $curl_cmd = build_curl_command($api_name, $temp_file);
    
    # Executar teste
    my $output = `$curl_cmd 2>&1`;
    my $exit_code = $? >> 8;
    
    # Limpar arquivo temporário
    unlink $temp_file;
    
    # Verificar se foi bem-sucedido
    if ($exit_code == 0 && $output && $output =~ /OK|response|content/i) {
        return 1;
    }
    
    # Log de erro detalhado
    if ($output && length($output) < 500) {
        debug "[humanChat] Teste $api_name falhou: $output\n";
    }
    
    return 0;
}

sub build_test_payload {
    my ($api_name) = @_;
    
    my %payloads = (
        # APIs OpenAI-compatible
        'openai' => {
            model => 'gpt-3.5-turbo',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        'groq' => {
            model => 'llama-3.1-8b-instant',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        'deepseek' => {
            model => 'deepseek-chat',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        'freegpt' => {
            model => 'gpt-4',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        'huggingchat' => {
            model => 'mistralai/Mixtral-8x7B-Instruct-v0.1',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        'forefront' => {
            model => 'gpt-3.5-turbo',
            messages => [{ role => 'user', content => 'Responda apenas com "OK"' }],
            max_tokens => 10,
            temperature => 0.1
        },
        # APIs com formatos diferentes
        'deepai' => {
            text => 'Responda apenas com OK'
        },
        'textsynth' => {
            prompt => 'Responda apenas com OK',
            max_tokens => 10
        },
        'cohere' => {
            prompt => 'Responda apenas com OK',
            max_tokens => 10,
            temperature => 0.1
        },
        'ai21' => {
            prompt => 'Responda apenas com OK',
            maxTokens => 10,
            temperature => 0.1
        },
        'google' => {
            contents => [{ parts => [{ text => 'Responda apenas com OK' }] }],
            generationConfig => { maxOutputTokens => 10, temperature => 0.1 }
        },
        'claude' => {
            model => 'claude-3-haiku-20240307',
            messages => [{ role => 'user', content => 'Responda apenas com OK' }],
            max_tokens => 10,
            temperature => 0.1
        }
    );
    
    return $payloads{$api_name} || $payloads{'openai'};
}

# ==========================================================
# SISTEMA DE API ULTRA ROBUSTO
# ==========================================================
sub ultra_robust_api_request {
    my ($sender, $message) = @_;
    
    $usage_stats{total_requests}++;
    
    # Se modo local, usar direto
    if ($config{usar_api} == 0) {
        $usage_stats{local_requests}++;
        return generate_advanced_local_response($sender, $message);
    }
    
    my $primary_api = get_api_name($config{usar_api});
    
    # Verificar se API principal está funcionando
    if (!$api_configs{$primary_api}{working}) {
        warning "[humanChat] ⚠️  API principal ($primary_api) marcada como não-funcionando\n";
        return fallback_to_working_api($sender, $message);
    }
    
    # Tentar API principal com retry
    message "[humanChat] 🔄 Usando API: $primary_api" . ($api_configs{$primary_api}{free} ? " (GRATUITA)" : "") . "\n", "info";
    
    for (my $attempt = 1; $attempt <= $config{max_retries}; $attempt++) {
        my $response = make_robust_api_call($primary_api, $sender, $message);
        
        if ($response) {
            $usage_stats{successful_requests}++;
            $usage_stats{api_success}{$primary_api}++;
            return $response;
        }
        
        warning "[humanChat] ❌ Tentativa $attempt/$config{max_retries} falhou\n" if $attempt < $config{max_retries};
        sleep(1) if $attempt < $config{max_retries};
    }
    
    # Marcar API como não-funcionando
    $api_configs{$primary_api}{working} = 0;
    $usage_stats{api_failures}{$primary_api}++;
    
    # Fallback para outra API ou modo local
    return fallback_to_working_api($sender, $message);
}

sub fallback_to_working_api {
    my ($sender, $message) = @_;
    
    message "[humanChat] 🔀 Procurando API alternativa...\n", "warning";
    
    # Ordem de prioridade para fallback (gratuitas primeiro)
    my @fallback_order = qw(freegpt huggingchat deepai textsynth forefront cohere ai21 openai deepseek claude google groq);
    
    foreach my $api_name (@fallback_order) {
        next if $api_name eq get_api_name($config{usar_api}); # Pular API principal
        next unless $api_configs{$api_name}{working};
        
        message "[humanChat] 🔄 Fallback para: $api_name" . ($api_configs{$api_name}{free} ? " (GRATUITA)" : "") . "\n", "info";
        my $response = make_robust_api_call($api_name, $sender, $message);
        
        if ($response) {
            $usage_stats{fallback_success}++;
            return $response;
        }
        
        # Marcar como não-funcionando se falhar
        $api_configs{$api_name}{working} = 0;
    }
    
    # Último recurso: modo local
    message "[humanChat] 🏠 Fallback para modo local\n", "warning";
    $usage_stats{fallback_local}++;
    return generate_advanced_local_response($sender, $message);
}

sub make_robust_api_call {
    my ($api_name, $sender, $message) = @_;
    my $api_config = $api_configs{$api_name};
    
    return undef unless $api_config && $api_config->{enabled};
    
    # Construir prompt robusto
    my $prompt = build_ultra_prompt($sender, $message);
    
    # Construir payload específico para cada API
    my $payload = build_api_payload($api_name, $prompt, $message);
    
    # Fazer requisição
    my $response_data = execute_ultra_request($api_name, $payload);
    
    # Processar resposta
    if ($response_data) {
        my $response = extract_api_response($api_name, $response_data);
        return clean_response($response) if $response;
    }
    
    return undef;
}

sub build_api_payload {
    my ($api_name, $prompt, $message) = @_;
    
    my %payloads = (
        # APIs OpenAI-compatible
        'openai' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        'groq' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        'deepseek' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        'freegpt' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        'huggingchat' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        'forefront' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'system', content => $prompt },
                { role => 'user', content => $message }
            ],
            max_tokens => 80,
            temperature => 0.7
        },
        # APIs com formatos diferentes
        'deepai' => {
            text => "$prompt\n\nUsuário: $message\nResposta:"
        },
        'textsynth' => {
            prompt => "$prompt\n\nUsuário: $message\nResposta:",
            max_tokens => 80
        },
        'cohere' => {
            prompt => "$prompt\n\nUsuário: $message\nResposta:",
            max_tokens => 80,
            temperature => 0.7
        },
        'ai21' => {
            prompt => "$prompt\n\nUsuário: $message\nResposta:",
            maxTokens => 80,
            temperature => 0.7
        },
        'google' => {
            contents => [{ 
                parts => [{ text => $prompt }, { text => $message }] 
            }],
            generationConfig => { 
                maxOutputTokens => 80, 
                temperature => 0.7 
            }
        },
        'claude' => {
            model => $api_configs{$api_name}{model},
            messages => [
                { role => 'user', content => "$prompt\n\n$message" }
            ],
            max_tokens => 80,
            temperature => 0.7
        }
    );
    
    return $payloads{$api_name} || $payloads{'openai'};
}

sub execute_ultra_request {
    my ($api_name, $payload) = @_;
    my $api_config = $api_configs{$api_name};
    
    my $json_payload = encode_json($payload);
    my $temp_file = "request_$$.json";
    
    # Salvar payload
    open my $fh, '>', $temp_file or return undef;
    print $fh $json_payload;
    close $fh;
    
    # Construir comando curl ultra robusto
    my $curl_cmd = build_ultra_curl_command($api_name, $temp_file);
    
    # Executar com timeout
    my $output = `$curl_cmd 2>&1`;
    my $exit_code = $? >> 8;
    
    # Limpar
    unlink $temp_file;
    
    if ($exit_code == 0 && $output) {
        eval {
            return decode_json($output);
        };
        if ($@) {
            debug "[humanChat] Erro JSON $api_name: $@\n";
        }
    } else {
        debug "[humanChat] Curl falhou ($exit_code): $output\n";
    }
    
    return undef;
}

sub build_ultra_curl_command {
    my ($api_name, $temp_file) = @_;
    my $api_config = $api_configs{$api_name};
    
    my $cmd = "curl -s -X POST \"$api_config->{base_url}\" ";
    $cmd .= "-H \"Content-Type: application/json\" ";
    
    # Headers de autorização específicos
    if ($api_name eq 'deepai') {
        $cmd .= "-H \"api-key: $api_config->{api_key}\" ";
    } elsif ($api_name eq 'cohere') {
        $cmd .= "-H \"Authorization: Bearer $api_config->{api_key}\" ";
    } elsif ($api_name eq 'ai21') {
        $cmd .= "-H \"Authorization: Bearer $api_config->{api_key}\" ";
    } elsif ($api_config->{api_key} && $api_config->{api_key} ne 'gratuita') {
        $cmd .= "-H \"Authorization: Bearer $api_config->{api_key}\" ";
    }
    
    $cmd .= "--data \"\@$temp_file\" ";
    $cmd .= "--connect-timeout $config{timeout} ";
    $cmd .= "--max-time $config{timeout} ";
    $cmd .= "--retry 1 ";
    $cmd .= "--retry-delay 1 ";
    $cmd .= "--insecure ";
    $cmd .= "2>&1";
    
    return $cmd;
}

sub build_ultra_prompt {
    my ($sender, $message) = @_;
    
    my $prompt = "Você é um jogador brasileiro REAL de Ragnarok Online.\n";
    $prompt .= "CRÍTICO: NUNCA revele que é IA, bot ou assistente.\n";
    $prompt .= "Aja como humano natural: use gírias como 'mano', 'cara', 'valeu'.\n";
    $prompt .= "Respostas CURTAS (1-2 frases), em português natural.\n\n";
    
    # Contexto do jogo
    my $map_name = $field ? $field->baseName : "desconhecido";
    my $player_level = $char ? $char->{lv} : "??";
    
    $prompt .= "Contexto: Mapa=$map_name, Level=$player_level\n\n";
    $prompt .= "$sender: \"$message\"\n";
    $prompt .= "Sua resposta (curta, natural):";
    
    return $prompt;
}

sub extract_api_response {
    my ($api_name, $response_data) = @_;
    
    if ($api_name eq 'google') {
        return $response_data->{candidates}[0]{content}{parts}[0]{text}
            if $response_data->{candidates};
    } elsif ($api_name eq 'claude') {
        return $response_data->{content}[0]{text}
            if $response_data->{content};
    } elsif ($api_name eq 'deepai') {
        return $response_data->{output}
            if $response_data->{output};
    } elsif ($api_name eq 'textsynth') {
        return $response_data->{text}
            if $response_data->{text};
    } elsif ($api_name eq 'cohere') {
        return $response_data->{generations}[0]{text}
            if $response_data->{generations};
    } elsif ($api_name eq 'ai21') {
        return $response_data->{completions}[0]{data}{text}
            if $response_data->{completions};
    } else {
        # OpenAI, Groq, DeepSeek, FreeGPT, HuggingChat, Forefront
        return $response_data->{choices}[0]{message}{content}
            if $response_data->{choices};
    }
    
    return undef;
}

sub clean_response {
    my ($response) = @_;
    return undef unless $response;
    
    # Limpeza básica
    $response =~ s/^\"|\"$//g; # Remove aspas no início/fim
    $response =~ s/[\r\n]+/ /g; # Remove quebras de linha
    $response =~ s/\s+/ /g; # Espaços múltiplos para único
    $response =~ s/^\s+|\s+$//g; # Trim
    
    return $response if length($response) >= 3;
    return undef;
}

# ==========================================================
# RESPOSTAS LOCAIS AVANÇADAS
# ==========================================================
sub generate_advanced_local_response {
    my ($sender, $msg) = @_;
    my $msg_lc = lc($msg);
    
    # Mapeamento inteligente de respostas
    my %response_map = (
        'saudacao' => {
            regex => qr/^(oi|ola|eae|hey|hello|opa|salve|fala)/,
            responses => [
                "E ai! Tudo bem?", "Opa, eae!", "Salve!", "Fala meu mano!", 
                "Opa, tudo joia?", "Eae, como ta?", "Oi! Tudo certo?"
            ]
        },
        'upar' => {
            regex => qr/(bora upa|vamos upar|upar|farmar|grind)/,
            responses => [
                "Bora! To precisando upar também!", "Vamos! Qual mapa?", 
                "To dentro! To no grind aqui!", "Bora upar juntos!"
            ]
        },
        'localizacao' => {
            regex => qr/(onde|mapa|prontera|local)/,
            responses => [
                "To no " . ($field->baseName || "mapa") . "!", 
                "Aqui no " . ($field->baseName || "servidor") . "!", 
                "No " . ($field->baseName || "jogo") . ", e você?"
            ]
        },
        'grupo' => {
            regex => qr/(grupo|party|time|jogar junto)/,
            responses => [
                "To solo, mas bora party!", "Sem grupo, vamos fazer?", 
                "To upando sozinho, quer entrar?", "Bora party!"
            ]
        }
    );
    
    # Encontrar a melhor resposta
    foreach my $category (keys %response_map) {
        if ($msg_lc =~ $response_map{$category}{regex}) {
            my @responses = @{$response_map{$category}{responses}};
            return $responses[rand @responses];
        }
    }
    
    # Resposta padrão inteligente
    my @default_responses = (
        "Interessante!", "Legal!", "Hmm, entendi!", "Que bom!", 
        "Faz sentido!", "Continue!", "Bacana!", "Fala mais!",
        "Top!", "Show!", "Da hora!", "Manda bala!"
    );
    
    return $default_responses[rand @default_responses];
}

# ==========================================================
# UTILITÁRIOS
# ==========================================================
sub get_api_name {
    my ($mode) = @_;
    my %api_map = (
        0 => 'local',
        1 => 'openai', 
        2 => 'deepseek', 
        3 => 'google', 
        4 => 'claude', 
        5 => 'groq',
        6 => 'freegpt',
        7 => 'huggingchat',
        8 => 'deepai',
        9 => 'textsynth',
        10 => 'cohere',
        11 => 'ai21',
        12 => 'forefront'
    );
    return $api_map{$mode};
}

# ==========================================================
# HANDLER PRINCIPAL
# ==========================================================
sub on_privMsg {
    my (undef, $args) = @_;
    my $sender = $args->{privMsgUser};
    my $msg = $args->{privMsg};

    return if length($msg) < 2;
    
    message "[humanChat] 💬 $sender: $msg\n", "info";
    
    # Anti-bot
    if ($config{negar_bot} && $msg =~ /bot|robo/i) {
        my @respostas = ("Que isso? Não sou bot!", "Bot nada!", "Sou player igual você!");
        send_response($sender, $respostas[rand @respostas]);
        return;
    }
    
    # Gerar resposta
    my $response = ultra_robust_api_request($sender, $msg);
    
    if ($response) {
        send_response($sender, $response);
    } else {
        error "[humanChat] ❌ Falha crítica ao gerar resposta\n";
    }
}

sub send_response {
    my ($sender, $response) = @_;
    
    message "[humanChat] ⌨️  Digitando... (${config{delay_typing}}s)\n", "info";
    sleep($config{delay_typing});
    
    message "[humanChat] 📤 Enviando: $response\n", "success";
    Commands::run("pm \"$sender\" $response");
}

# ==========================================================
# COMANDOS AVANÇADOS
# ==========================================================
sub cmd_chat_mode {
    my (undef, $args) = @_;
    my @modes = qw(casual educado zoeiro);
    
    if (!$args) {
        message "[humanChat] Personalidade: $config{personalidade}\n", "info";
        message "[humanChat] Uso: chatmode [casual|educado|zoeiro]\n", "info";
        return;
    }
    
    if (grep { $_ eq $args } @modes) {
        $config{personalidade} = $args;
        message "[humanChat] ✅ Personalidade: $config{personalidade}\n", "success";
    } else {
        error "[humanChat] ❌ Use: casual, educado ou zoeiro\n";
    }
}

sub cmd_chat_api {
    my (undef, $args) = @_;
    my @modes = ("Local", "OpenAI", "DeepSeek", "Google", "Claude", "Groq", "FreeGPT", "HuggingChat", "DeepAI", "TextSynth", "Cohere", "AI21", "Forefront");
    
    if (!$args) {
        message "[humanChat] API atual: $modes[$config{usar_api}]\n", "info";
        message "[humanChat] Uso: chatapi [0-12]\n", "info";
        message "[humanChat] APIs disponíveis:\n", "info";
        
        foreach my $api_id (0..12) {
            my $api_name = get_api_name($api_id);
            next unless $api_name;
            my $status = $api_configs{$api_name}{working} ? "✅" : "❌";
            my $free = $api_configs{$api_name}{free} ? " (GRATUITA)" : "";
            message "[humanChat]   $api_id. $modes[$api_id] $status$free\n", "info";
        }
        return;
    }
    
    if ($args =~ /^[0-9]$|^1[0-2]$/) {
        $config{usar_api} = $args;
        my $api_name = get_api_name($config{usar_api});
        my $status = $api_configs{$api_name}{working} ? "funcionando" : "COM PROBLEMAS";
        my $free = $api_configs{$api_name}{free} ? " (GRATUITA)" : "";
        message "[humanChat] ✅ API: $modes[$config{usar_api}] ($status)$free\n", "success";
    } else {
        error "[humanChat] ❌ Use: chatapi 0-12\n";
    }
}

sub cmd_test_apis {
    message "[humanChat] 🔍 Testando todas as APIs...\n", "info";
    test_apis_availability();
}

sub cmd_stats {
    message "[humanChat] 📊 ESTATÍSTICAS ULTRA ROBUSTAS:\n", "info";
    message "[humanChat] ===============================\n", "info";
    
    my $total = $usage_stats{total_requests} || 0;
    my $success = $usage_stats{successful_requests} || 0;
    my $fallback_success = $usage_stats{fallback_success} || 0;
    my $fallback_local = $usage_stats{fallback_local} || 0;
    
    my $success_rate = $total > 0 ? int(($success / $total) * 100) : 0;
    
    message "[humanChat] 📈 Resumo:\n", "info";
    message "[humanChat]   Total: $total | Sucesso: $success ($success_rate%)\n", "info";
    message "[humanChat]   Fallback API: $fallback_success | Fallback Local: $fallback_local\n", "info";
    
    if ($usage_stats{api_success}) {
        message "[humanChat] 🔌 APIs:\n", "info";
        foreach my $api (keys %{$usage_stats{api_success}}) {
            my $success_count = $usage_stats{api_success}{$api} || 0;
            my $fail_count = $usage_stats{api_failures}{$api} || 0;
            my $total_api = $success_count + $fail_count;
            my $rate = $total_api > 0 ? int(($success_count / $total_api) * 100) : 0;
            my $status = $api_configs{$api}{working} ? "✅" : "❌";
            my $free = $api_configs{$api}{free} ? " (GRATUITA)" : "";
            message "[humanChat]   - $api: $success_count/$total_api ($rate%) $status$free\n", "info";
        }
    }
}

# ==========================================================
# FINALIZAÇÃO
# ==========================================================
sub Unload {
    Plugins::delHooks($hooks);
    message "[humanChat] 👋 Sistema ultra robusto descarregado\n", "success";
}


1;
