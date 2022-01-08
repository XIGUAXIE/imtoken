.class public final Lcom/helpscout/beacon/a/d/e/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/helpscout/beacon/a/d/e/a/f;

.field private static final b:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v6, Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/a/d/e/a/f;-><init>(ZZZZLjava/util/List;)V

    sput-object v6, Lcom/helpscout/beacon/a/d/e/a/g;->a:Lcom/helpscout/beacon/a/d/e/a/f;

    new-instance v12, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    new-instance v1, Lcom/helpscout/beacon/a/d/e/a/b;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v0}, Lcom/helpscout/beacon/a/d/e/a/b;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidContactFormConfig()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x80

    const/4 v13, 0x0

    move-object v0, v12

    move-object v5, v6

    move v6, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;-><init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v12, Lcom/helpscout/beacon/a/d/e/a/g;->b:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    return-void
.end method

.method public static final a()Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/d/e/a/g;->b:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    return-object v0
.end method

.method public static final b()Lcom/helpscout/beacon/a/d/e/a/f;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/d/e/a/g;->a:Lcom/helpscout/beacon/a/d/e/a/f;

    return-object v0
.end method
