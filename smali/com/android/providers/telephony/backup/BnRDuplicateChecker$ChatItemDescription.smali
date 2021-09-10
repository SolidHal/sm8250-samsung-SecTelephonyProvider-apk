.class public Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatItemDescription"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public fromAddress:Ljava/lang/String;

.field public imdnMessageId:Ljava/lang/String;

.field private mHashCode:I

.field public rcsdbId:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 9

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imdn_message_id"

    .line 742
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "rcsdb_id"

    .line 743
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "date"

    .line 744
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "thread_id"

    .line 745
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "type"

    .line 746
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "from_address"

    .line 747
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "session_id"

    .line 748
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 749
    invoke-direct/range {v1 .. v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->imdnMessageId:Ljava/lang/String;

    .line 760
    iput-object p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->rcsdbId:Ljava/lang/String;

    .line 761
    iput-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->date:Ljava/lang/String;

    .line 762
    iput-object p4, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->threadId:Ljava/lang/String;

    .line 763
    iput-object p5, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->type:Ljava/lang/String;

    .line 764
    iput-object p6, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->fromAddress:Ljava/lang/String;

    .line 765
    iput-object p7, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->sessionId:Ljava/lang/String;

    const-string p7, "%%"

    if-eqz p1, :cond_1

    if-eqz p6, :cond_0

    .line 769
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableJansky()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 770
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    .line 772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 777
    :cond_1
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 780
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 785
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->mHashCode:I

    return p0
.end method
