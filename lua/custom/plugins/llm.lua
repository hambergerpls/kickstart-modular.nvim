return {
    'huggingface/llm.nvim',
    opts = {
        backend = "openai",
        url = "https://openrouter.ai",
        api_token = os.getenv("LLM_NVIM_HF_API_TOKEN"),
        model = "deepseek/deepseek-coder",
        lsp = {
            bin_path = vim.fn.expand("~/.nix-profile/bin/llm-ls"),
        },
        request_body = {
            temperature = 1.20,
            top_p = 1,
            top_k = 0,
            frequency_penalty = 0,
            presence_penalty = 1.75,
            repitition_penalty = 1,
            min_p = 0,
            top_a = 0
        }
    }
  }
