.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 295
    new-instance p0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    return-void
.end method
