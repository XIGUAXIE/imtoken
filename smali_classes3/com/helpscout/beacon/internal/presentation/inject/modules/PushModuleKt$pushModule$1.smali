.class final Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/module/Module;",
        "Lkotlin/Unit;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lorg/koin/core/module/Module;",
        "",
        "invoke",
        "(Lorg/koin/core/module/Module;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/module/Module;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;->invoke(Lorg/koin/core/module/Module;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/module/Module;)V
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$1;

    const/4 v1, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v0, v14, v14, v13, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    const-class v2, Landroid/app/NotificationManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v20, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$2;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$2;

    invoke-static {v0, v14, v14, v13, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v17

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    const-class v3, Lcom/helpscout/beacon/a/d/d/e;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    sget-object v21, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x80

    const/16 v26, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v26}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v19, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$3;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$3;

    invoke-static {v0, v14, v14, v13, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    const-class v3, Lcom/helpscout/beacon/a/d/d/a;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    sget-object v20, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x80

    const/16 v25, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v19, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$4;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$4;

    invoke-static {v0, v14, v14, v13, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    const-class v3, Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    sget-object v20, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    move-object v15, v2

    invoke-direct/range {v15 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v19, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$5;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$5;

    invoke-static {v0, v14, v14, v13, v1}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const-class v2, Lcom/helpscout/beacon/a/d/d/j/b;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    sget-object v20, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    move-object v15, v1

    invoke-direct/range {v15 .. v25}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$6;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$6;

    invoke-virtual {v0, v14, v14}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const-class v2, Lcom/helpscout/beacon/a/d/d/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    sget-object v8, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$7;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$7;

    invoke-virtual {v0, v14, v14}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const-class v2, Lcom/helpscout/beacon/a/d/d/h/b;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    sget-object v8, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$8;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1$8;

    invoke-virtual {v0, v14, v14}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    const-class v2, Lcom/helpscout/beacon/a/d/d/h/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    sget-object v8, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    return-void
.end method
