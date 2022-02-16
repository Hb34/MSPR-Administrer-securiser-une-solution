import React from 'react'
import { Grid } from '@mui/material'
import Link from 'next/link'

const Header = () => {
    return (
        <header className='header'>
            <Grid container alignItems='flex-end'>
                <Grid item xs={2}>
                    <h1 className='title'>
                        <Link href="/">
                            <a>Résilience 34</a>
                        </Link>
                    </h1>
                </Grid>
                <Grid item xs={10} container className='nav'>
                    <Grid item xs={6}>
                        <Link href="/">
                            <a>Accueil</a>
                        </Link>
                    </Grid>
                    <Grid item xs={6} container className='subnav'>
                        <Grid item xs={3}>
                            <Link href="/contact">
                                <a>Contact</a>
                            </Link>
                        </Grid>
                        <Grid item xs={3}>
                            <Link href="/connexion">
                                <a>Connexion</a>
                            </Link>
                        </Grid>
                    </Grid>
                </Grid>
            </Grid>
        </header>
    )
}

export default Header