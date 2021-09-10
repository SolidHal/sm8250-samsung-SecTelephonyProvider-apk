.class public final Lcom/android/providers/telephony/DummyFramework$Channels;
.super Ljava/lang/Object;
.source "DummyFramework.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://channels/mychannels"

    .line 125
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
