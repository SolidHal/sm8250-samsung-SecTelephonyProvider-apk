.class Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CarrierIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/CarrierIdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierIdDatabaseHelper"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/telephony/CarrierIdProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/CarrierIdProvider;Landroid/content/Context;)V
    .locals 2

    .line 333
    iput-object p1, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->this$0:Lcom/android/providers/telephony/CarrierIdProvider;

    const-string p1, "carrierIdentification.db"

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 334
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 327
    const-class p1, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->TAG:Ljava/lang/String;

    const-string p2, "CarrierIdDatabaseHelper: 5"

    .line 335
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public createCarrierTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "carrier_id"

    .line 347
    invoke-static {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getStringForCarrierIdTableCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    invoke-static {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getStringForIndexCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropCarrierTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS carrier_id;"

    .line 352
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "carrier_id"

    .line 342
    invoke-static {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getStringForCarrierIdTableCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    invoke-static {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getStringForIndexCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbh.onUpgrade:+ db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " oldV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x5

    if-ge p2, p3, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->dropCarrierTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->createCarrierTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    iget-object p2, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->this$0:Lcom/android/providers/telephony/CarrierIdProvider;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/providers/telephony/CarrierIdProvider;->access$000(Lcom/android/providers/telephony/CarrierIdProvider;I)V

    .line 363
    iget-object p0, p0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;->this$0:Lcom/android/providers/telephony/CarrierIdProvider;

    invoke-static {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider;->access$100(Lcom/android/providers/telephony/CarrierIdProvider;Landroid/database/sqlite/SQLiteDatabase;)I

    :cond_0
    return-void
.end method
