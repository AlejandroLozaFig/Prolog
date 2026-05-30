// ============================================================================
// Nombre: Loza Figueroa Pedro Alejandro
// Tema 2: Modelo de Programación Funcional
// Temática: Auditoría de Ciberseguridad y Redes
// ============================================================================

console.log("=================================================");
console.log(" MÓDULO 1: FUNCIONES MAP (TRANSFORMACIÓN)");
console.log("=================================================\n");

{
    // Programa 1: Extraer direcciones IP de un log de conexiones
    const logsConexion = [
        { id: 1, ip: "192.168.1.15", estado: "Conectado" },
        { id: 2, ip: "10.0.0.4", estado: "Bloqueado" },
        { id: 3, ip: "172.16.254.1", estado: "Conectado" }
    ];
    
    const direccionesIP = logsConexion.map(log => log.ip);
    
    console.log("1. Extracción de IPs objetivo:");
    console.log("Logs originales:", logsConexion);
    console.log("IPs extraídas =>", direccionesIP, "\n");
}

{
    // Programa 2: Convertir niveles de riesgo base (1-10) a porcentajes (10%-100%)
    const cvssScoresBase = [4.5, 9.8, 7.2, 3.1, 10.0];
    
    const porcentajesRiesgo = cvssScoresBase.map(score => `${(score * 10).toFixed(1)}%`);
    
    console.log("2. Conversión de puntuación CVSS a porcentaje de riesgo:");
    console.log(`Scores Base : [${cvssScoresBase.join(" | ")}]`);
    console.log(`Porcentajes : [${porcentajesRiesgo.join(" | ")}]\n`);
}

{
    // Programa 3: Etiquetar puertos analizados con su estado
    const puertosEscaneados = [22, 80, 443, 3306, 8080];
    
    const reportePuertos = puertosEscaneados.map(puerto => `Puerto ${puerto} [ANALIZADO]`);
    
    console.log("3. Generación de reporte de escaneo de puertos:");
    console.table(reportePuertos);
    console.log("\n");
}


console.log("=================================================");
console.log(" MÓDULO 2: FUNCIONES FILTER (FILTRADO)");
console.log("=================================================\n");

{
    // Programa 4: Filtrar intentos de inicio de sesión fallidos (Fuerza Bruta)
    const auditoriaAuth = [
        { usuario: "admin", exito: false, metodo: "SSH" },
        { usuario: "root", exito: false, metodo: "SSH" },
        { usuario: "sysadmin", exito: true, metodo: "Web" },
        { usuario: "test", exito: false, metodo: "FTP" }
    ];
    
    const alertasIntrusiones = auditoriaAuth.filter(intento => intento.exito === false);
    
    console.log("1. Detección de inicios de sesión fallidos:");
    console.table(alertasIntrusiones);
    console.log("\n");
}

{
    // Programa 5: Identificar vulnerabilidades críticas (Puntuación >= 9.0)
    const vulnerabilidades = [
        { cve: "CVE-2021-44228", score: 10.0 },
        { cve: "CVE-2023-12345", score: 6.5 },
        { cve: "CVE-2020-0796", score: 9.8 },
        { cve: "CVE-2022-22965", score: 8.1 }
    ];
    
    const vulnerabilidadesCriticas = vulnerabilidades.filter(vuln => vuln.score >= 9.0);
    
    console.log("2. Filtrado de vulnerabilidades críticas a parchear:");
    console.log("Total detectadas:", vulnerabilidades.length);
    console.log("Prioridad Crítica =>", vulnerabilidadesCriticas, "\n");
}

{
    // Programa 6: Filtrar servidores que están caídos (Offline)
    const infraestructura = [
        { host: "SRV-BD-01", uptime: 99.9, status: "Online" },
        { host: "SRV-WEB-02", uptime: 0.0, status: "Offline" },
        { host: "SRV-DNS-01", uptime: 100, status: "Online" },
        { host: "FW-MAIN", uptime: 0.0, status: "Offline" }
    ];
    
    const servidoresCaidos = infraestructura.filter(server => server.status === "Offline");
    
    console.log("3. Monitoreo de infraestructura (Nodos caídos):");
    console.table(servidoresCaidos);
    console.log("\n");
}


console.log("=================================================");
console.log(" MÓDULO 3: FUNCIONES REDUCE (AGREGACIÓN)");
console.log("=================================================\n");

{
    // Programa 7: Calcular el total de paquetes maliciosos bloqueados por el Firewall
    const paquetesBloqueadosPorDia = [1450, 3200, 890, 5600, 2100];
    
    const totalBloqueados = paquetesBloqueadosPorDia.reduce((acumulador, paquetes) => acumulador + paquetes, 0);
    
    console.log("1. Tráfico anómalo mitigado en la semana:");
    console.log(`Registros diarios: [${paquetesBloqueadosPorDia.join(", ")}]`);
    console.log(`=> Total de paquetes bloqueados: ${totalBloqueados}\n`);
}

{
    // Programa 8: Encontrar el pico máximo de latencia en un test de estrés de red (DDoS simulation)
    const latenciaMs = [45, 60, 120, 850, 30, 95];
    
    const latenciaMaxima = latenciaMs.reduce((max, actual) => {
        return actual > max ? actual : max;
    }, 0); // Iniciamos el comparador en 0
    
    console.log("2. Análisis de latencia (Simulación DDoS):");
    console.log(`Muestras (ms): [${latenciaMs.join("ms, ")}ms]`);
    console.log(`=> Pico máximo registrado: ${latenciaMaxima}ms\n`);
}

{
    // Programa 9: Calcular el presupuesto total necesario para mitigar riesgos
    const planMitigacion = [
        { activo: "Licencia Antivirus", costo: 1200 },
        { activo: "Consultoría Pentesting", costo: 3500 },
        { activo: "Actualización de Hardware Firewall", costo: 2800 },
        { activo: "Capacitación Anti-Phishing", costo: 850 }
    ];
    
    const inversionTotal = planMitigacion.reduce((total, item) => total + item.costo, 0);
    
    console.log("3. Cálculo de presupuesto para plan de remediación:");
    console.table(planMitigacion);
    console.log(`=> INVERSIÓN TOTAL REQUERIDA: $${inversionTotal.toFixed(2)} USD\n`);
}