.class final Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;
.super Ljava/lang/Object;
.source "TelephonyBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsBody"
.end annotation


# instance fields
.field public charSet:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    .line 1244
    iput p2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1249
    instance-of v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    check-cast p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    .line 1253
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    iget p1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " charSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
