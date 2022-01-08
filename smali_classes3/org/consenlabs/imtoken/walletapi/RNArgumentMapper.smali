.class public Lorg/consenlabs/imtoken/walletapi/RNArgumentMapper;
.super Ljava/lang/Object;
.source "RNArgumentMapper.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createArray()Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 13
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    return-object v0
.end method

.method public createMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 17
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
