.class public Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;
.super Ljava/lang/Object;
.source "RecordReader.java"


# instance fields
.field private jsonReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;"
        }
    .end annotation
.end field

.field private location:I

.field private reader:Landroid/util/JsonReader;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    .line 27
    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    .line 31
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    .line 32
    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    .line 34
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    iget p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/JsonReader;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getJSONObject()Lorg/json/JSONObject;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 48
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V

    .line 49
    iget v3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/JsonReader;

    iput-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    .line 53
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method
