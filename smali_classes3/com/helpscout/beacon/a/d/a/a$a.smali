.class public final Lcom/helpscout/beacon/a/d/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c;->a:Lcom/helpscout/beacon/a/d/a/c$a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/a/c$a;->a()Lorg/koin/core/KoinApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    :goto_0
    return-object v0
.end method
