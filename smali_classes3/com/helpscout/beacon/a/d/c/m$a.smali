.class public final Lcom/helpscout/beacon/a/d/c/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/helpscout/beacon/a/d/c/m;)Z
    .locals 0

    invoke-interface {p0}, Lcom/helpscout/common/mvi/MviError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lcom/helpscout/beacon/SDKInitException;

    return p0
.end method
