package cn.csbit.common;

/**
 * 全局配置类
 */
public class Global {
    interface DbType {
        byte ORACLE = 0;
        byte MSSQL = 1;
        byte DB2 = 2;
        byte MYSQL = 3;
        byte CACHE = 4;
        byte SYBASE = 5;
        byte DAMENG = 6;
        byte Informix = 7;
        byte ST = 8;
        byte King = 9;
        byte TeraData = 10;
        byte PostgreSQL = 11;
        byte GBase = 12;
        // 初始以达梦7为开发对象，后来发现7和6是不兼容的升级，jdbc无法共用，因此添加达梦6
        byte DAMENG6 = 13;
    }
}
