.class Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;
.super Ljava/lang/Object;
.source "MessageBnR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/MessageBnR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSItemDescription"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field private mHashCode:I

.field public messageBox:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Z)V
    .locals 8

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date"

    .line 1441
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "msg_box"

    .line 1442
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "tr_id"

    .line 1443
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "m_id"

    .line 1444
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "thread_id"

    .line 1445
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "reserved"

    .line 1446
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1450
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move v7, p1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1454
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1458
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->date:Ljava/lang/String;

    .line 1459
    iput-object p2, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageBox:Ljava/lang/String;

    .line 1460
    iput-object p3, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->transactionId:Ljava/lang/String;

    .line 1461
    iput-object p4, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->messageId:Ljava/lang/String;

    .line 1462
    iput-object p5, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->threadId:Ljava/lang/String;

    const-string v0, "%%"

    if-nez p4, :cond_1

    .line 1468
    invoke-static {}, Lcom/android/providers/telephony/backup/MessageBnR;->access$200()Z

    move-result p4

    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    .line 1469
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1471
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

    .line 1473
    :cond_1
    invoke-static {}, Lcom/android/providers/telephony/backup/MessageBnR;->access$200()Z

    move-result p6

    if-nez p6, :cond_2

    .line 1474
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

    .line 1476
    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 1481
    iget p0, p0, Lcom/android/providers/telephony/backup/MessageBnR$MMSItemDescription;->mHashCode:I

    return p0
.end method
