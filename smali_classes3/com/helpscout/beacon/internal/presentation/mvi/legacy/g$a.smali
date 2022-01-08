.class public final Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    .locals 1

    const-string v0, "$this$postEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/c$a;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/c;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method public static a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "$this$postState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/g;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method
