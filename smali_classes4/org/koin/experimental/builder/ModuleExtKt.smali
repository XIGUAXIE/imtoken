.class public final Lorg/koin/experimental/builder/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/experimental/builder/ModuleExtKt\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,74:1\n80#2,2:75\n82#2,2:88\n100#2,2:90\n102#2,2:103\n100#2,4:105\n80#2,2:109\n82#2,2:122\n80#2,4:124\n100#2,2:128\n102#2,2:141\n100#2,4:143\n23#3,11:77\n60#3,11:92\n23#3,11:111\n60#3,11:130\n*E\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/experimental/builder/ModuleExtKt\n*L\n33#1,2:75\n33#1,2:88\n46#1,2:90\n46#1,2:103\n46#1,4:105\n60#1,2:109\n60#1,2:122\n60#1,4:124\n73#1,2:128\n73#1,2:141\n73#1,4:143\n33#1,11:77\n46#1,11:92\n60#1,11:111\n73#1,11:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u001a5\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001aA\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0003\"\n\u0008\u0001\u0010\u0002\u0018\u0001*\u0002H\n*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001a?\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u001aK\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001\"\n\u0008\u0000\u0010\n\u0018\u0001*\u00020\u0003\"\n\u0008\u0001\u0010\u0002\u0018\u0001*\u0002H\n*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "factory",
        "Lorg/koin/core/definition/BeanDefinition;",
        "T",
        "",
        "Lorg/koin/core/module/Module;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "override",
        "",
        "factoryBy",
        "R",
        "single",
        "createOnStart",
        "singleBy",
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
.method public static final synthetic factory(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ModuleExtKt$factory$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$factory$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, p2, v0, v1, v2}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v8

    .line 91
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 95
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v0, 0x4

    const-string v1, "T"

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 100
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, p2

    move-object v4, p1

    .line 95
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic factory$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 14

    move-object v0, p0

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 43
    move-object v1, v2

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    const/4 v1, 0x2

    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    const-string v5, "$this$factory"

    .line 44
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v5, Lorg/koin/experimental/builder/ModuleExtKt$factory$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$factory$1;

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 105
    invoke-static {p0, v3, v4, v1, v2}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v10

    .line 106
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 95
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const/4 v2, 0x4

    const-string v3, "T"

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 100
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v3, v1

    .line 95
    invoke-direct/range {v3 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object v1
.end method

.method public static final synthetic factoryBy(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Z)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$factoryBy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ModuleExtKt$factoryBy$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$factoryBy$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 128
    invoke-static {p0, p2, v0, v1, v2}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v8

    .line 129
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 133
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 v0, 0x4

    const-string v1, "R"

    .line 135
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 138
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, p2

    move-object v4, p1

    .line 133
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic factoryBy$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 14

    move-object v0, p0

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 70
    move-object v1, v2

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    const/4 v1, 0x2

    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    const-string v5, "$this$factoryBy"

    .line 71
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v5, Lorg/koin/experimental/builder/ModuleExtKt$factoryBy$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$factoryBy$1;

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 143
    invoke-static {p0, v3, v4, v1, v2}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v10

    .line 144
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 133
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const/4 v2, 0x4

    const-string v3, "R"

    .line 135
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 138
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v3, v1

    .line 133
    invoke-direct/range {v3 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object v1
.end method

.method public static final synthetic single(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZZ)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "ZZ)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ModuleExtKt$single$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$single$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 75
    invoke-virtual {p0, p3, p2}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v8

    .line 76
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 80
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 p3, 0x4

    const-string v0, "T"

    .line 82
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 85
    sget-object v6, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, p2

    move-object v4, p1

    .line 80
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic single$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 14

    move-object v0, p0

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 29
    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    and-int/lit8 v1, p4, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move/from16 v1, p2

    :goto_1
    const/4 v3, 0x4

    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v2, p3

    :goto_2
    const-string v4, "$this$single"

    .line 31
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v4, Lorg/koin/experimental/builder/ModuleExtKt$single$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$single$1;

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 75
    invoke-virtual {p0, v2, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .line 76
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 80
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    const-string v2, "T"

    .line 82
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 85
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v13

    move-object v3, v1

    .line 80
    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object v13
.end method

.method public static final synthetic singleBy(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZZ)Lorg/koin/core/definition/BeanDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T::TR;>(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "ZZ)",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$singleBy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lorg/koin/experimental/builder/ModuleExtKt$singleBy$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$singleBy$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 109
    invoke-virtual {p0, p3, p2}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v8

    .line 110
    sget-object p2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v2

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 114
    new-instance p2, Lorg/koin/core/definition/BeanDefinition;

    const/4 p3, 0x4

    const-string v0, "R"

    .line 116
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 119
    sget-object v6, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, p2

    move-object v4, p1

    .line 114
    invoke-direct/range {v1 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object p2
.end method

.method public static synthetic singleBy$default(Lorg/koin/core/module/Module;Lorg/koin/core/qualifier/Qualifier;ZZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 14

    move-object v0, p0

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 56
    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    and-int/lit8 v1, p4, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move/from16 v1, p2

    :goto_1
    const/4 v3, 0x4

    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v2, p3

    :goto_2
    const-string v4, "$this$singleBy"

    .line 58
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v4, Lorg/koin/experimental/builder/ModuleExtKt$singleBy$1;->INSTANCE:Lorg/koin/experimental/builder/ModuleExtKt$singleBy$1;

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 124
    invoke-virtual {p0, v2, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .line 125
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v1

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 114
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    const-string v2, "R"

    .line 116
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 119
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v13

    move-object v3, v1

    .line 114
    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    invoke-virtual {p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-object v13
.end method
