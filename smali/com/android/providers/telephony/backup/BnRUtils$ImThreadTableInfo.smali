.class public Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;
.super Ljava/lang/Object;
.source "BnRUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImThreadTableInfo"
.end annotation


# instance fields
.field private address_list:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conversation_type:I

.field private im_type:I

.field private is_mute:I

.field private mAlias:Ljava/lang/String;

.field private mOpened:I

.field private mSimImsiSessionValuePairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private pin_to_top:I


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashSet;ILjava/lang/String;IIIILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->address_list:Ljava/util/LinkedHashSet;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mSimImsiSessionValuePairs:Ljava/util/ArrayList;

    .line 210
    iget-object v0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->address_list:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 211
    iput p2, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->im_type:I

    .line 212
    iput p4, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->is_mute:I

    .line 213
    iput p5, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->pin_to_top:I

    .line 214
    iput p7, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->conversation_type:I

    .line 215
    iput p6, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mOpened:I

    .line 216
    iput-object p3, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mAlias:Ljava/lang/String;

    .line 217
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mSimImsiSessionValuePairs:Ljava/util/ArrayList;

    invoke-virtual {p0, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAddressList()Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->address_list:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationType()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->conversation_type:I

    return p0
.end method

.method public getImType()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->im_type:I

    return p0
.end method

.method public getOpened()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mOpened:I

    return p0
.end method

.method public getSimImsiSessionValuePairs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->mSimImsiSessionValuePairs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getThreadMute()I
    .locals 0

    .line 225
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->is_mute:I

    return p0
.end method

.method public getThreadPinToTop()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ImThreadTableInfo;->pin_to_top:I

    return p0
.end method
