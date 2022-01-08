.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/a/d/b/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

.field final synthetic b:Lcom/helpscout/beacon/a/d/b/e;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Lcom/helpscout/beacon/a/d/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;->b:Lcom/helpscout/beacon/a/d/b/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;->b:Lcom/helpscout/beacon/a/d/b/e;

    check-cast v1, Lcom/helpscout/beacon/a/d/b/e$c;

    invoke-virtual {v1}, Lcom/helpscout/beacon/a/d/b/e$c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
