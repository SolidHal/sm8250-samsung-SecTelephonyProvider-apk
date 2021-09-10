.class public Lcom/android/providers/telephony/bin/BinCommonDbUtil;
.super Ljava/lang/Object;
.source "BinCommonDbUtil.java"


# direct methods
.method public static createBinStatusAllTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_SMS:Ljava/lang/String;

    const-string v1, "sms"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_MMS:Ljava/lang/String;

    const-string v1, "pdu"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_WPM:Ljava/lang/String;

    const-string v1, "wpm"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_IM:Ljava/lang/String;

    const-string v1, "im"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_FT:Ljava/lang/String;

    const-string v1, "ft"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinStatusTriggerInsertFt(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 94
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_FT:Ljava/lang/String;

    const-string v1, "ft"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinStatusTriggerInsertIm(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_IM:Ljava/lang/String;

    const-string v1, "im"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinStatusTriggerInsertMms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 79
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_MMS:Ljava/lang/String;

    const-string v1, "pdu"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinStatusTriggerInsertSms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 74
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_SMS:Ljava/lang/String;

    const-string v1, "sms"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinStatusTriggerInsertWpm(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_WPM:Ljava/lang/String;

    const-string v1, "wpm"

    invoke-static {v0, v1}, Lcom/android/providers/telephony/bin/BinDbConstants;->getCreateTriggerUpdateBinStatusOnInsert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createBinTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "TP/BinCommonDbUtil"

    const-string v0, "createBinTables Fail!"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_SMS_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_PDU_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_PART_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_ADDR_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_IM_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_FT_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_WPM_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/android/providers/telephony/bin/BinDbConstants;->CREATE_BIN_CMAS_TABLE_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createDateOrderedIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE INDEX IF NOT EXISTS index_date_ordered_bin_sms ON bin_sms (thread_id, date DESC)"

    .line 33
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_date_ordered_bin_wpm ON bin_wpm (thread_id, date DESC)"

    .line 34
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_date_ordered_bin_pdu ON bin_pdu (thread_id, date DESC)"

    .line 35
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_date_ordered_bin_im ON bin_im (thread_id, date DESC)"

    .line 36
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS index_date_ordered_bin_ft ON bin_ft (thread_id, date DESC)"

    .line 37
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropBinStatusTriggerInsertFt(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_FT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropBinStatusTriggerInsertIm(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_IM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropBinStatusTriggerInsertMms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropBinStatusTriggerInsertSms(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_SMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropBinStatusTriggerInsertWpm(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/bin/BinDbConstants;->TRIGGER_UPDATE_BIN_STATUS_ON_INSERT_WPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
