require('luaunit')
require('rose')

function test_outline()
    quux = { name='the tome of quux', sell_in=4, quality=7 }
    items = { quux }
    update_quality(items)
    assertEquals('fixme', 'asap')
end

---- Control test output:
lu = LuaUnit
-- lu:setOutputType( "NIL" )
-- lu:setOutputType( "TAP" )
lu:setVerbosity( 1 )
os.exit( lu:run() )
