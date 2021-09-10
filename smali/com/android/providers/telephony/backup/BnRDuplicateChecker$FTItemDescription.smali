.class Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FTItemDescription"
.end annotation


# instance fields
.field public chatSessionId:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public fromAddress:Ljava/lang/String;

.field public imdnMessageId:Ljava/lang/String;

.field private mHashCode:I

.field public rcsdbId:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 10

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rcsdb_id"

    .line 961
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "date"

    .line 962
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "thread_id"

    .line 963
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "type"

    .line 964
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "imdn_message_id"

    .line 965
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "from_address"

    .line 966
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "session_id"

    .line 967
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "chat_session_id"

    .line 968
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 969
    invoke-direct/range {v1 .. v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->rcsdbId:Ljava/lang/String;

    .line 983
    iput-object p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->date:Ljava/lang/String;

    .line 984
    iput-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->threadId:Ljava/lang/String;

    .line 985
    iput-object p4, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->type:Ljava/lang/String;

    .line 986
    iput-object p5, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->imdnMessageId:Ljava/lang/String;

    .line 987
    iput-object p6, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->fromAddress:Ljava/lang/String;

    .line 989
    iput-object p8, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->chatSessionId:Ljava/lang/String;

    const-string p7, "%%"

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 993
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableJansky()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 994
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 1001
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1004
    :cond_2
    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 1009
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->mHashCode:I

    return p0
.end method
