.class public Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
.super Ljava/lang/Object;
.source "WritableMapBuilder.java"


# instance fields
.field private final map:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;D)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public toMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->map:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method
