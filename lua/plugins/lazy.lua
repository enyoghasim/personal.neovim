return {
    {
        "pocco81/auto-save.nvim",
        event = "VeryLazy",
        opts = {
            enabled = true,
            execution_message = {message = function() return "" end},
            trigger_events = {"InsertLeave", "TextChanged"}
        }
    }
}
