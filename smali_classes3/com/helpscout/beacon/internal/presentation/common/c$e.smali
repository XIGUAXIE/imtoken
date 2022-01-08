.class final Lcom/helpscout/beacon/internal/presentation/common/c$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/c;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/common/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/c$e;->a:Lcom/helpscout/beacon/internal/presentation/common/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c$e;->a:Lcom/helpscout/beacon/internal/presentation/common/c;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c$e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
