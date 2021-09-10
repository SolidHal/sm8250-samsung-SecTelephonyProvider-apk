.class Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;
.super Ljava/lang/Object;
.source "MmsBNRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/MmsBNRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordDescription"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field private mHashCode:I

.field public messageBox:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;Z)V
    .locals 8

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date"

    .line 1642
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "msg_box"

    .line 1643
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "tr_id"

    .line 1644
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "m_id"

    .line 1645
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "thread_id"

    .line 1646
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "reserved"

    .line 1648
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1649
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v7

    :goto_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move v7, p1

    :cond_1
    move-object v1, p0

    .line 1651
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1659
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->date:Ljava/lang/String;

    .line 1660
    iput-object p2, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageBox:Ljava/lang/String;

    .line 1661
    iput-object p3, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->transactionId:Ljava/lang/String;

    .line 1662
    iput-object p4, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->messageId:Ljava/lang/String;

    .line 1663
    iput-object p5, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->threadId:Ljava/lang/String;

    const-string v0, "%%"

    if-nez p4, :cond_1

    .line 1669
    invoke-static {}, Lcom/android/providers/telephony/backup/MmsBNRClient;->access$000()Z

    move-result p4

    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    .line 1670
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1672
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1674
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/backup/MmsBNRClient;->access$000()Z

    move-result p6

    if-nez p6, :cond_2

    .line 1675
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1678
    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 1683
    iget p0, p0, Lcom/android/providers/telephony/backup/MmsBNRClient$RecordDescription;->mHashCode:I

    return p0
.end method
