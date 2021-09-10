.class public final synthetic Lcom/android/providers/telephony/-$$Lambda$MmsSmsDatabaseHelper$Dtie35YMshoX00P8QPxWGPUClcA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/-$$Lambda$MmsSmsDatabaseHelper$Dtie35YMshoX00P8QPxWGPUClcA;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    iput-wide p2, p0, Lcom/android/providers/telephony/-$$Lambda$MmsSmsDatabaseHelper$Dtie35YMshoX00P8QPxWGPUClcA;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/providers/telephony/-$$Lambda$MmsSmsDatabaseHelper$Dtie35YMshoX00P8QPxWGPUClcA;->f$0:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p0, Lcom/android/providers/telephony/-$$Lambda$MmsSmsDatabaseHelper$Dtie35YMshoX00P8QPxWGPUClcA;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->lambda$deleteObsoleteMessages$0(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method
