.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
.super Ljava/lang/Object;
.source "HSDescriptorCookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    }
.end annotation


# instance fields
.field private final type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field private final value:[B


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    .line 12
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->value:[B

    return-void
.end method


# virtual methods
.method public getAuthTypeByte()B
    .locals 2

    .line 16
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$1;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorCookie$CookieType:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    return v1
.end method

.method public getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->value:[B

    return-object v0
.end method
