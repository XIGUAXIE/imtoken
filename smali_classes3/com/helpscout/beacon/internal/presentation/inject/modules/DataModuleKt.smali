.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0019\u0010\u0001\u001a\u00020\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/koin/core/module/Module;",
        "dataModule",
        "Lorg/koin/core/module/Module;",
        "getDataModule",
        "()Lorg/koin/core/module/Module;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final dataModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt$dataModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt$dataModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v1, v0, v2, v3}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt;->dataModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getDataModule()Lorg/koin/core/module/Module;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt;->dataModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
