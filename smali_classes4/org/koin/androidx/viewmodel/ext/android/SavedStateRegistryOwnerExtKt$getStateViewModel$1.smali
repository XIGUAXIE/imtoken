.class final Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$getStateViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SavedStateRegistryOwnerExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt;->getStateViewModel(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/androidx/viewmodel/ViewModelOwner;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lorg/koin/androidx/viewmodel/ViewModelOwner;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $this_getStateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$getStateViewModel$1;->$this_getStateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$getStateViewModel$1;->invoke()Lorg/koin/androidx/viewmodel/ViewModelOwner;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/androidx/viewmodel/ViewModelOwner;
    .locals 3

    .line 73
    sget-object v0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->Companion:Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ext/android/SavedStateRegistryOwnerExtKt$getStateViewModel$1;->$this_getStateViewModel:Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-virtual {v0, v2, v1}, Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;->from(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)Lorg/koin/androidx/viewmodel/ViewModelOwner;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
