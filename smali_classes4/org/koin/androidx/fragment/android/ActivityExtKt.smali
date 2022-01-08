.class public final Lorg/koin/androidx/fragment/android/ActivityExtKt;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,53:1\n63#2,4:54\n140#3:58\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityExt.kt\norg/koin/androidx/fragment/android/ActivityExtKt\n*L\n33#1,4:54\n33#1:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a;\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0087\u0008\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "replace",
        "Landroidx/fragment/app/FragmentTransaction;",
        "F",
        "Landroidx/fragment/app/Fragment;",
        "containerViewId",
        "",
        "args",
        "Landroid/os/Bundle;",
        "tag",
        "",
        "setupKoinFragmentFactory",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic replace(Landroidx/fragment/app/FragmentTransaction;ILandroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentTransaction;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/FragmentTransaction;"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/KoinExperimentalAPI;
    .end annotation

    const-string v0, "$this$replace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "F"

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "replace(containerViewId, F::class.java, args, tag)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic replace$default(Landroidx/fragment/app/FragmentTransaction;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 49
    move-object p2, v0

    check-cast p2, Landroid/os/Bundle;

    :cond_0
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_1

    .line 50
    move-object p3, v0

    check-cast p3, Ljava/lang/String;

    :cond_1
    const-string p4, "$this$replace"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "F"

    .line 52
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "replace(containerViewId, F::class.java, args, tag)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V
    .locals 3
    .annotation runtime Lorg/koin/core/KoinExperimentalAPI;
    .end annotation

    const-string v0, "$this$setupKoinFragmentFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportFragmentManager"

    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/ComponentCallbacks;

    const/4 v0, 0x0

    .line 54
    move-object v1, v0

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    .line 55
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 57
    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getDefaultScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 58
    const-class v2, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    .line 57
    check-cast p0, Landroidx/fragment/app/FragmentFactory;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;

    invoke-direct {v0, p1}, Lorg/koin/androidx/fragment/android/KoinFragmentFactory;-><init>(Lorg/koin/core/scope/Scope;)V

    check-cast v0, Landroidx/fragment/app/FragmentFactory;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    :goto_0
    return-void
.end method

.method public static synthetic setupKoinFragmentFactory$default(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 31
    check-cast p1, Lorg/koin/core/scope/Scope;

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/androidx/fragment/android/ActivityExtKt;->setupKoinFragmentFactory(Landroidx/fragment/app/FragmentActivity;Lorg/koin/core/scope/Scope;)V

    return-void
.end method
