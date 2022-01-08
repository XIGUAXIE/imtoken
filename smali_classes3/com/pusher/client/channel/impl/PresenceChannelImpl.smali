.class public Lcom/pusher/client/channel/impl/PresenceChannelImpl;
.super Lcom/pusher/client/channel/impl/PrivateChannelImpl;
.source "PresenceChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/PresenceChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;,
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;,
        Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final MEMBER_ADDED_EVENT:Ljava/lang/String; = "pusher_internal:member_added"

.field private static final MEMBER_REMOVED_EVENT:Ljava/lang/String; = "pusher_internal:member_removed"


# instance fields
.field private final idToUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pusher/client/channel/User;",
            ">;"
        }
    .end annotation
.end field

.field private myUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;-><init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    return-void
.end method

.method private static extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 155
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "data"

    .line 156
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static extractPresenceDataFrom(Ljava/lang/String;)Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;
    .locals 2

    .line 161
    invoke-static {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;

    iget-object p0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;->presence:Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;

    return-object p0
.end method

.method private extractUserIdFromChannelData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Invalid response from Authorizer: no user_id key in channel_data object: "

    .line 169
    :try_start_0
    sget-object v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "user_id"

    .line 175
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    .line 183
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    new-instance v1, Lcom/pusher/client/AuthorizationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :catch_0
    new-instance v1, Lcom/pusher/client/AuthorizationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 171
    new-instance v1, Lcom/pusher/client/AuthorizationFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response from Authorizer: unable to parse channel_data object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private handleMemberAddedEvent(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    .line 125
    iget-object v0, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userId:Ljava/lang/String;

    .line 126
    iget-object v1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userInfo:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    :goto_0
    new-instance v1, Lcom/pusher/client/channel/User;

    invoke-direct {v1, v0, p1}, Lcom/pusher/client/channel/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    check-cast p1, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 134
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V

    :cond_1
    return-void
.end method

.method private handleMemberRemovedEvent(Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractDataStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    sget-object v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;

    .line 144
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->userId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/User;

    .line 146
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    check-cast v0, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 149
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V

    :cond_0
    return-void
.end method

.method private handleSubscriptionSuccessfulMessage(Ljava/lang/String;)V
    .locals 4

    .line 100
    invoke-static {p1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractPresenceDataFrom(Ljava/lang/String;)Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;

    move-result-object p1

    .line 101
    iget-object v0, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;->ids:Ljava/util/List;

    .line 102
    iget-object p1, p1, Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;->hash:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 108
    :goto_1
    new-instance v3, Lcom/pusher/client/channel/User;

    invoke-direct {v3, v1, v2}, Lcom/pusher/client/channel/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    check-cast p1, Lcom/pusher/client/channel/PresenceChannelEventListener;

    .line 115
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->getUsers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/pusher/client/channel/PresenceChannelEventListener;->onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 1

    .line 78
    instance-of v0, p2, Lcom/pusher/client/channel/PresenceChannelEventListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PresenceChannelEventListener can be bound to a presence channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 1

    const-string v0, "^(?!presence-).*"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMe()Lcom/pusher/client/channel/User;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->myUserID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/User;

    return-object v0
.end method

.method public getUsers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->idToUserMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pusher_internal:subscription_succeeded"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleSubscriptionSuccessfulMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pusher_internal:member_added"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleMemberAddedEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pusher_internal:member_removed"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->handleMemberRemovedEvent(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Presence Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->toSubscribeMessage()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->channelData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->extractUserIdFromChannelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;->myUserID:Ljava/lang/String;

    return-object v0
.end method
