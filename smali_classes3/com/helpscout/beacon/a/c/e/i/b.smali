.class public final Lcom/helpscout/beacon/a/c/e/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/d/e/a/e;)V
    .locals 8

    const-string v0, "formFieldValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->f()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/e;->b()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/model/PreFilledForm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getPreFilledForm()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setContactFormDraft(Lcom/helpscout/beacon/model/PreFilledForm;)V

    :cond_0
    return-void
.end method
