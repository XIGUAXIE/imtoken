.class public final Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedSavedStateRegistryOwnerExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt;->sharedStateViewModel(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedSavedStateRegistryOwnerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedSavedStateRegistryOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1\n+ 2 SharedSavedStateRegistryOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt\n*L\n1#1,86:1\n62#2:87\n*E\n*S KotlinDebug\n*F\n+ 1 SharedSavedStateRegistryOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1\n*L\n44#1:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "()Landroidx/lifecycle/ViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $state:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_sharedStateViewModel:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$this_sharedStateViewModel:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$state:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$this_sharedStateViewModel:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$state:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    const-string v5, "T"

    .line 87
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Landroidx/lifecycle/ViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v0, v1, v2, v4, v3}, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt;->getStateViewModel(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ext/android/SharedSavedStateRegistryOwnerExtKt$sharedStateViewModel$1;->invoke()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
