.class public final Lorg/koin/experimental/builder/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/experimental/builder/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,55:1\n45#2,5:56\n51#2,2:72\n60#2,5:74\n66#2,2:90\n60#2,8:92\n45#2,5:100\n51#2,2:116\n45#2,8:118\n60#2,5:126\n66#2,2:142\n60#2,8:144\n23#3,11:61\n60#3,11:79\n23#3,11:105\n60#3,11:131\n*E\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/experimental/builder/ScopeSetExtKt\n*L\n16#1,5:56\n16#1,2:72\n29#1,5:74\n29#1,2:90\n29#1,8:92\n41#1,5:100\n41#1,2:116\n41#1,8:118\n54#1,5:126\n54#1,2:142\n54#1,8:144\n16#1,11:61\n29#1,11:79\n41#1,11:105\n54#1,11:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a5\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001aA\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0003\"\n\u0008\u0001\u0010\u0002\u0018\u0001*\u0002H\n*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001a5\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001aA\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0003\"\n\u0008\u0001\u0010\u0002\u0018\u0001*\u0002H\n*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u00a8\u0006\r"
    }
    d2 = {
        "factory",
        "Lorg/koin/core/definition/BeanDefinition;",
        "T",
        "",
        "Lorg/koin/dsl/ScopeDSL;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "override",
        "",
        "factoryBy",
        "R",
        "scoped",
        "scopedBy",
        "koin-core-ext"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic factory(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$factory$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 74
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 77
    new-instance v0, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 82
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 87
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v1, p2

    move-object v4, p1

    move-object v8, v0

    .line 82
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic factory$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 26
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
    const-string p1, "$this$factory"

    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lorg/koin/experimental/builder/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$factory$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 92
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 95
    new-instance p2, Lorg/koin/core/definition/Options;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 82
    new-instance p3, Lorg/koin/core/definition/BeanDefinition;

    const/4 p4, 0x4

    const-string v0, "T"

    .line 84
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 87
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p3

    move-object v4, p1

    move-object v7, p2

    .line 82
    invoke-direct/range {v0 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p3
.end method

.method public static final synthetic factoryBy(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$factoryBy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ScopeSetExtKt$factoryBy$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$factoryBy$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 126
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 129
    new-instance v0, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 134
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v3, "R"

    .line 136
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 139
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v1, p2

    move-object v4, p1

    move-object v8, v0

    .line 134
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic factoryBy$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 51
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
    const-string p1, "$this$factoryBy"

    .line 52
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lorg/koin/experimental/builder/ScopeSetExtKt$factoryBy$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$factoryBy$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 144
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 147
    new-instance p2, Lorg/koin/core/definition/Options;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 134
    new-instance p3, Lorg/koin/core/definition/BeanDefinition;

    const/4 p4, 0x4

    const-string v0, "R"

    .line 136
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 139
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p3

    move-object v4, p1

    move-object v7, p2

    .line 134
    invoke-direct/range {v0 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p3
.end method

.method public static final synthetic scoped(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$scoped"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$scoped$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 56
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 59
    new-instance v0, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 64
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 66
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 69
    sget-object v6, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v1, p2

    move-object v4, p1

    move-object v8, v0

    .line 64
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic scoped$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 13
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
    const-string p1, "$this$scoped"

    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lorg/koin/experimental/builder/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$scoped$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 56
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 59
    new-instance p2, Lorg/koin/core/definition/Options;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 64
    new-instance p3, Lorg/koin/core/definition/BeanDefinition;

    const/4 p4, 0x4

    const-string v0, "T"

    .line 66
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 69
    sget-object v5, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p3

    move-object v4, p1

    move-object v7, p2

    .line 64
    invoke-direct/range {v0 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p3
.end method

.method public static final synthetic scopedBy(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Lorg/koin/dsl/ScopeDSL;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$scopedBy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ScopeSetExtKt$scopedBy$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$scopedBy$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 100
    sget-object v0, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 103
    new-instance v0, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 108
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v1, 0x4

    const-string v3, "R"

    .line 110
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 113
    sget-object v6, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v1, p2

    move-object v4, p1

    move-object v8, v0

    .line 108
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic scopedBy$default(Lorg/koin/dsl/ScopeDSL;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 38
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
    const-string p1, "$this$scopedBy"

    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p1, Lorg/koin/experimental/builder/ScopeSetExtKt$scopedBy$1;->INSTANCE:Lorg/koin/experimental/builder/ScopeSetExtKt$scopedBy$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 118
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 121
    new-instance p2, Lorg/koin/core/definition/Options;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getScopeQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 108
    new-instance p3, Lorg/koin/core/definition/BeanDefinition;

    const/4 p4, 0x4

    const-string v0, "R"

    .line 110
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 113
    sget-object v5, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p3

    move-object v4, p1

    move-object v7, p2

    .line 108
    invoke-direct/range {v0 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-virtual {p0}, Lorg/koin/dsl/ScopeDSL;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p3
.end method
