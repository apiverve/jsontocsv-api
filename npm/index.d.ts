declare module '@apiverve/jsontocsv' {
  export interface jsontocsvOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface jsontocsvResponse {
    status: string;
    error: string | null;
    data: JSONtoCSVConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface JSONtoCSVConverterData {
      rowCount:    number | null;
      columnCount: number | null;
      columns:     (null | string)[];
      csv:         null | string;
  }

  export default class jsontocsvWrapper {
    constructor(options: jsontocsvOptions);

    execute(callback: (error: any, data: jsontocsvResponse | null) => void): Promise<jsontocsvResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: jsontocsvResponse | null) => void): Promise<jsontocsvResponse>;
    execute(query?: Record<string, any>): Promise<jsontocsvResponse>;
  }
}
