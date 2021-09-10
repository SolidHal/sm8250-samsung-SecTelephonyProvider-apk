.class public Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMSItemDescription"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field private mHashCode:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 4

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date"

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 287
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 288
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    .line 289
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 298
    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 303
    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    .line 306
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    .line 311
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->access$100()Z

    move-result p1

    const-string p2, "%%"

    if-eqz p1, :cond_2

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 314
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->mHashCode:I

    return p0
.end method
