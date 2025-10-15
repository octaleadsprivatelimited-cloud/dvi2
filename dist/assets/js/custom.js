// Vercel Analytics injection for static site
// Uses Vercel Web Analytics script (added in index.html) as primary
// and attempts dynamic import of @vercel/analytics when available
(function(){
    try {
        if ('noModule' in document.createElement('script')) {
            import('/node_modules/@vercel/analytics/dist/index.mjs')
                .then(function(mod){ if(mod && typeof mod.inject==='function'){ mod.inject(); } })
                .catch(function(){});
        }
    } catch(e) {}
})();


