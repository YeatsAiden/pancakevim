return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function ()
        local Rule = require('nvim-autopairs.rule')
        local npairs = require('nvim-autopairs')

        npairs.setup({})

        npairs.add_rule(Rule("$","$",{"typ", "typst"}))
        npairs.add_rule(Rule("[","]"))
    end,
}
