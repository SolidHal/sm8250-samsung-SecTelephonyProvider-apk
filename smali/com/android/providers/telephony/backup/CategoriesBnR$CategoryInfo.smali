.class public Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;
.super Ljava/lang/Object;
.source "CategoriesBnR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/CategoriesBnR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryInfo"
.end annotation


# instance fields
.field id:J

.field isEnable:I

.field name:Ljava/lang/String;

.field orderNum:I


# direct methods
.method constructor <init>(JLjava/lang/String;II)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-wide p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->id:J

    .line 119
    iput-object p3, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->name:Ljava/lang/String;

    .line 120
    iput p4, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->isEnable:I

    .line 121
    iput p5, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->orderNum:I

    return-void
.end method


# virtual methods
.method getId()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->id:J

    return-wide v0
.end method

.method getIsEnable()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->isEnable:I

    return p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method getOrderNum()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->orderNum:I

    return p0
.end method
