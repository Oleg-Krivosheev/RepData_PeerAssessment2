damage_scale <- function( dmg_code ) {
    print(dmg_code)
    if ((toupper(dmg_code) == "B")[1]) {
        return( 1.0e9 )
    }
    if ((toupper(dmg_code) == "M")[1]) {
        return( 1.0e6 )
    }
    if ((toupper(dmg_code) == "K")[1]) {
        return( 1000.0 )
    }
    if ((toupper(dmg_code) == "H")[1]) {
        return( 100.0 )
    }

    1.0
}

print(damage_scale(""))
print(damage_scale("B"))
print(damage_scale("b"))
print(damage_scale("h"))
print(damage_scale("qq"))
