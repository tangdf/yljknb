package com.wondersgroup.local.jkgz.zsk.deciphering;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.ptr.PointerByReference;

public class sqlite3JNA {
	// Fundamental Data Types
	public final static int SQLITE_INTEGER    = 1;
	public final static int SQLITE_FLOAT      = 2;
	public final static int SQLITE_BLOB       = 4;
	public final static int SQLITE_NULL       = 5;
	public final static int SQLITE_TEXT       = 3;
	//Result Codes
	public final static int SQLITE_OK         = 0;
	public final static int SQLITE_ERROR      = 1;  // SQL error or missing database
	public final static int SQLITE_INTERNAL   = 2;  // Internal logic error in SQLite
	public final static int SQLITE_PERM       = 3;  // Access permission denied
	public final static int SQLITE_ABORT      = 4;  // Callback routine requested an abort
	public final static int SQLITE_BUSY       = 5;  // The database file is locked
	public final static int SQLITE_LOCKED     = 6;  // A table in the database is locked
	public final static int SQLITE_NOMEM      = 7;  // A malloc() failed
	public final static int SQLITE_READONLY   = 8;  // Attempt to write a readonly database
	public final static int SQLITE_INTERRUPT  = 9;  // Operation terminated by sqlite3_interrupt()
	public final static int SQLITE_IOERR      = 10; // Some kind of disk I/O error occurred
	public final static int SQLITE_CORRUPT    = 11; // The database disk image is malformed
	public final static int SQLITE_NOTFOUND   = 12; // NOT USED. Table or record not found
	public final static int SQLITE_FULL       = 13; // Insertion failed because database is full
	public final static int SQLITE_CANTOPEN   = 14; // Unable to open the database file
	public final static int SQLITE_PROTOCOL   = 15; // NOT USED. Database lock protocol error
	public final static int SQLITE_EMPTY      = 16; // Database is empty
	public final static int SQLITE_SCHEMA     = 17; // The database schema changed
	public final static int SQLITE_TOOBIG     = 18; // String or BLOB exceeds size limit
	public final static int SQLITE_CONSTRAINT = 19; // Abort due to constraint violation
	public final static int SQLITE_MISMATCH   = 20; // Data type mismatch
	public final static int SQLITE_MISUSE     = 21; // Library used incorrectly
	public final static int SQLITE_NOLFS      = 22; // Uses OS features not supported on host
	public final static int SQLITE_AUTH       = 23; // Authorization denied
	public final static int SQLITE_FORMAT     = 24; // Auxiliary database format error
	public final static int SQLITE_RANGE      = 25; // 2nd parameter to sqlite3_bind out of range
	public final static int SQLITE_NOTADB     = 26; // File opened that is not a database file
	public final static int SQLITE_ROW        = 100; // sqlite3_step() has another row ready
	public final static int SQLITE_DONE       = 101; // sqlite3_step() has finished executing
	private static String getFatherFilePath(){
		String systemPath=System.getProperty("user.dir");
		systemPath.replace("\\","/");
		return systemPath;
	}
	public interface Clibrary extends Library{  
		Clibrary INSTANTCE = (Clibrary) Native.loadLibrary(getFatherFilePath()+"\\src\\local\\com\\wondersgroup\\local\\jkgz\\zsk\\deciphering\\sqlite3", Clibrary.class);
		  
		int sqlite3_open(String filename, PointerByReference ppDb);  
		int sqlite3_key(Pointer pnt , String key , int length);
		int sqlite3_close(Pointer pnt );
		int sqlite3_free(PointerByReference errMsg);
		String sqlite3_errmsg(Pointer pnt);
		int sqlite3_exec(Pointer pDb, String cmd,   execCallback callback, Pointer udp, PointerByReference errMsg);
		int sqlite3_prepare_v2(Pointer pDb, Pointer sql, int nByte, PointerByReference ppStmt, PointerByReference pTail);
		int sqlite3_finalize(Pointer pStmt);
		int sqlite3_step(Pointer pStmt);
	    int sqlite3_reset(Pointer pStmt);

	    int sqlite3_column_count(Pointer sqlite3_stmt);
	    String sqlite3_column_name(Pointer sqlite3_stmt, int N);
	    int sqlite3_column_type(Pointer sqlite3_stmt, int iCol);
	    int sqlite3_column_int(Pointer sqlite3_stmt, int iCol);
	    long sqlite3_column_int64(Pointer sqlite3_stmt, int iCol);
	    double sqlite3_column_double(Pointer sqlite3_stmt, int iCol);
	    String sqlite3_column_text(Pointer sqlite3_stmt, int iCol);
	    Pointer sqlite3_column_blob(Pointer sqlite3_stmt, int iCol);
	    int sqlite3_column_bytes(Pointer sqlite3_stmt, int iCol);
	    int sqlite3_column_bytes16(Pointer sqlite3_stmt, int iCol);
	    String sqlite3_column_table_name(Pointer sqlite3_stmt, int iCol);

	} 
}