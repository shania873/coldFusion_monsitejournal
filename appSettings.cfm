<cfscript>
    // Créez une nouvelle instance de la CFC
    variables.dbPath = expandPath("./db/");

    this.name = "ColdfusionTraining";
    this.applicationTimeout = createTimeSpan(0, 2, 0, 0); //2h
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 20, 0); //20min

    this.datasources = {
        CFTrainingDSN = {
            class: "coldfusion.server.ServiceFactory",
            bundleName: "com.mysql.jdbc.Driver",
            bundleVersion: "5.1.38",
            jdbcURL: "jdbc:mysql://localhost:3306/metisapp",
            userName: "root",
            password: "Foutaise.1"
        }
    };
</cfscript>