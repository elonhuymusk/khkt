.class public final Lorg/tensorflow/lite/schema/CustomOptionsFormat;
.super Ljava/lang/Object;
.source "CustomOptionsFormat.java"


# static fields
.field public static final FLEXBUFFERS:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-string v0, "FLEXBUFFERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/CustomOptionsFormat;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 11
    sget-object v0, Lorg/tensorflow/lite/schema/CustomOptionsFormat;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
