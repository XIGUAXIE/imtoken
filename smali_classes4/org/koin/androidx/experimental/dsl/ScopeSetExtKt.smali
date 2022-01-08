.class public final Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/experimental/dsl/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,41:1\n60#2,5:42\n66#2,2:58\n60#3,11:47\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/androidx/experimental/dsl/ScopeSetExtKt\n*L\n38#1,5:42\n38#1,2:58\n38#1,11:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a5\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u00a8\u0006\t"
    }
    d2 = {
        "viewModel",
        "Lorg/koin/core/definition/BeanDefinition;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/dsl/ScopeDSL;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "override",
        "",
        "koin-android-ext_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic viewModel(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1;->INSTANCE:Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 42
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 45
    new-instance v0, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 50
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 55
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v1, p2

    move-object v4, p1

    move-object v8, v0

    .line 50
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 39
    invoke-static {p2}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic viewModel$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 35
    check-cast p1, Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, p2

    :goto_0
    const-string p1, "$this$viewModel"

    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1;->INSTANCE:Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 42
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 45
    new-instance p2, Lorg/koin/core/definition/Options;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 50
    new-instance p3, Lorg/koin/core/definition/BeanDefinition;

    const/4 p4, 0x4

    const-string v0, "T"

    .line 52
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 55
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p3

    move-object v4, p1

    move-object v7, p2

    .line 50
    invoke-direct/range {v0 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 39
    invoke-static {p3}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    return-object p3
.end method
