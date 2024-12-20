.class public final enum Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
.super Ljava/lang/Enum;
.source "TidbitAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# instance fields
.field public final sCheckinCode:I

.field public final sRes:I

.field public final sText:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    const v3, 0x7f11003d

    const v4, 0x7f08018f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 2
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "COPY"

    const/4 v9, 0x1

    const v10, 0x7f11003e

    const v11, 0x7f080190

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 3
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "DIAL"

    const/4 v15, 0x2

    const v16, 0x7f11003f

    const v17, 0x7f080179

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 4
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "EMAIL"

    const/4 v9, 0x3

    const v10, 0x7f110040

    const v11, 0x7f0801cc

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 5
    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "EVENT"

    const/4 v15, 0x4

    const v16, 0x7f110041

    const v17, 0x7f080178

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 6
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "LOCATION"

    const/4 v9, 0x5

    const v10, 0x7f110042

    const v11, 0x7f0801c8

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 7
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "SEARCH"

    const/4 v15, 0x6

    const v16, 0x7f110047

    const v17, 0x7f080213

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 8
    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "SHARE"

    const/4 v9, 0x7

    const v10, 0x7f110048

    const v11, 0x7f080216

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 9
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v19, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "SMS"

    const/16 v16, 0x8

    const v17, 0x7f110049

    const v18, 0x7f0801cd

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 10
    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v25, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v21, "WEB"

    const/16 v22, 0x9

    const v23, 0x7f11004a

    const v24, 0x7f0801c4

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 11
    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v19, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "WIFI"

    const/16 v16, 0xa

    const v17, 0x7f11004b

    const v18, 0x7f080252

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 12
    new-instance v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v25, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v21, "MOTORDP"

    const/16 v22, 0xb

    const v23, 0x7f110045

    const v24, 0x7f080252

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 13
    new-instance v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v19, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "MONOPOLY"

    const/16 v16, 0xc

    const v17, 0x7f110044

    const v18, 0x7f080199

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 14
    new-instance v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v25, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v21, "MATTER"

    const/16 v22, 0xd

    const v23, 0x7f110043

    const v24, 0x7f080199

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const/16 v14, 0xe

    new-array v14, v14, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v0, v14, v6

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v3, v14, v0

    const/4 v0, 0x5

    aput-object v4, v14, v0

    const/4 v0, 0x6

    aput-object v5, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v7, v14, v0

    const/16 v0, 0x9

    aput-object v8, v14, v0

    const/16 v0, 0xa

    aput-object v9, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v11, v14, v0

    const/16 v0, 0xd

    aput-object v12, v14, v0

    .line 15
    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sText:I

    .line 3
    iput p4, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    .line 4
    iget p1, p5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-virtual {v0}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object v0
.end method
