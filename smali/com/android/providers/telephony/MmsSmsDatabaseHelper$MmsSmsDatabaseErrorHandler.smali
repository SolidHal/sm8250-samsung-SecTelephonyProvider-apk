.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsSmsDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "MmsSmsDatabaseHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsSmsDatabaseErrorHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsSmsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    .line 1200
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsSmsDatabaseErrorHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->access$000(Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsSmsDatabaseErrorHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->access$100(Landroid/content/Context;Z)V

    .line 1209
    iget-object p0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsSmsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {p0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
