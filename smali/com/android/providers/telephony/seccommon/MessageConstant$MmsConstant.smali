.class public final Lcom/android/providers/telephony/seccommon/MessageConstant$MmsConstant;
.super Ljava/lang/Object;
.source "MessageConstant.java"


# static fields
.field public static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://spammms"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/seccommon/MessageConstant$MmsConstant;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
