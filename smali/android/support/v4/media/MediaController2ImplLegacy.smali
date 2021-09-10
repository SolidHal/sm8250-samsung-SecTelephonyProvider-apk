.class Landroid/support/v4/media/MediaController2ImplLegacy;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;
    }
.end annotation


# static fields
.field static final sDefaultRootExtras:Landroid/os/Bundle;


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInstance:Landroid/support/v4/media/MediaController2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    const-string v1, "android.support.v4.media.root_default_root"

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method abstract onConnectedNotLocked(Landroid/os/Bundle;)V
.end method
