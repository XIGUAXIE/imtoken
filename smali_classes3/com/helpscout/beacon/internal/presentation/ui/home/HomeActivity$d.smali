.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->D()V
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


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
