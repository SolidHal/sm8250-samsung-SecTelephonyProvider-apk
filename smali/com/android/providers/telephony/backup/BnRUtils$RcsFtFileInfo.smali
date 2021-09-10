.class Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;
.super Ljava/lang/Object;
.source "BnRUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RcsFtFileInfo"
.end annotation


# instance fields
.field mDate:J

.field mFilePath:Ljava/lang/String;

.field mFileSize:J

.field mId:J

.field mRelativePath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JLjava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 2951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2952
    iput-wide p1, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mId:J

    .line 2953
    iput-object p3, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    .line 2954
    iput-wide p4, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mDate:J

    .line 2955
    iput-wide p6, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFileSize:J

    .line 2956
    iput-object p8, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mRelativePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 2960
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 2962
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "file_path"

    .line 2963
    iget-object v2, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    .line 2964
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "file_size"

    .line 2965
    iget-wide v2, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "relative_path"

    .line 2966
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;->mRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toJson : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TP/BnRUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
